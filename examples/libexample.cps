{
    "cps_version": "0.13.0",
    "name": "libexample_or_any_name",
    "description": "A general-purpose static library example.",
    "cps_path": "@prefix@/lib/cps/libexample",
    "license": "MIT",
    "version": "1.0.0",
    "default_components": [
        "libexample"
    ],
    "components": {
        "libexample": {
            "type": "archive",
            "location": "@prefix@/lib/libexample.a",
            "includes": [
                "@prefix@/include"
            ],
            "requires": ["libfoo:libfoo", "libbar:libbar"],
            "link_flags": [],
            "compile_flags": [],
            "definitions": {
                "*": {}
            },
            "link_libraries": [],
            "link_location": "",
            "link_languages": [
                "cpp", "c"
            ]
        }
    }
}
