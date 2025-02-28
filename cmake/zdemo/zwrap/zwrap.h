#pragma once

#include <zlib-ng.h>

#include <string>

namespace zwrap
{

std::string compress(std::string const& in)
{
  auto l = zng_compressBound(in.size() + 1);
  auto out = std::string(l + 1, '\0');

  auto* id = reinterpret_cast<uint8_t const*>(in.data());
  auto* od = reinterpret_cast<uint8_t*>(out.data());

  if (zng_compress(od, &l, id, in.size()) == Z_OK) {
    out.resize(l);
    return out;
  }
  return {};
}

std::string uncompress(std::string const& in, size_t outSize)
{
  auto out = std::string(outSize + 1, '\0');

  auto* id = reinterpret_cast<uint8_t const*>(in.data());
  auto* od = reinterpret_cast<uint8_t*>(out.data());

  if (zng_uncompress(od, &outSize, id, in.size()) == Z_OK) {
    out.resize(outSize);
    return out;
  }
  return {};
}

}
