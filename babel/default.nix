{
    lib,
    buildPythonPackage,
    fetchFromGitHub,
pytz,
pytest,
stdenv,
glibc,
}:

buildPythonPackage rec {
    pname = "babel";
    version = "2.8.0";

    src = fetchFromGitHub {
        owner = "python-babel";
        repo = "${pname}";
        rev = "v${version}";
        sha256 = "0fs5xiipip4wa4jzpdi1ws95h6c4y3l4icc3wdfcmi84x54awm77";
    };

    buildInputs = [
	stdenv
	glibc
	pytz
	pytest
    ];

    meta = with lib; {
        description = "An OpenAPI (fka Swagger) client & converter in python, which is type-safe, dynamic, spec-compliant.";
        homepage = "https://github.com/pyopenapi/pyswagger";
    };
}
