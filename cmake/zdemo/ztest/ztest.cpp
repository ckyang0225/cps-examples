#include <zwrap/zwrap.h>

#include <iostream>

#include <cstring>

std::string read(std::istream& s)
{
  return std::string{std::istreambuf_iterator<char>{s},
                     std::istreambuf_iterator<char>{}};
}

std::string uncompress(std::string const& buf)
{
  size_t l;
  memcpy(reinterpret_cast<char*>(&l), buf.data(), sizeof(l));
  std::cerr << l << '\n';
  return zwrap::uncompress(buf.substr(sizeof(l)), l);
}

void putchars(std::ostream& s, std::string const& data)
{
  for (auto const c : data) {
    s.put(c);
  }
  s.flush();
}

void putchars(std::ostream& s, size_t const data)
{
  std::string buf(sizeof(data), '\0');
  memcpy(buf.data(), reinterpret_cast<char const*>(&data), sizeof(data));
  putchars(s, buf);
}

void usage()
{
  std::cout << "Usage: ztest {-c|-d|-u}\n\n";
  std::cout << "Compress (-c) or uncompress (-d, -u) stdin to stdout.\n";
}

int main(int argc, char const* const* argv)
{
  if (argc < 2) {
    usage();
    return 1;
  }

  auto const op = std::string{argv[1]};
  if (op == "-c") {
    auto const in = read(std::cin);
    auto const out = zwrap::compress(in);
    putchars(std::cout, in.size());
    putchars(std::cout, out);
  } else if (op == "-d" || op == "-u") {
    auto const in = read(std::cin);
    auto const out = uncompress(in);
    putchars(std::cout, out);
  } else {
    usage();
    return 1;
  }

  return 0;
}
