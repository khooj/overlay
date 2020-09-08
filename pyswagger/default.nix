{
    lib,
    buildPythonPackage,
    fetchFromGitHub,
    pyaml,
    six,
    validate-email,
    #dev
    requests,
    pudb,
    pytest,
    tornado,
    httpretty,
    flask,
    webapp2,
}:

buildPythonPackage rec {
    pname = "pyswagger";
    version = "0.8.39";

    src = fetchFromGitHub {
        owner = "pyopenapi";
        repo = "${pname}";
        rev = "6b65f9b6b1c711a18e4a9bd1657342a12aea8c29";
        sha256 = "1c3k99m50g07jj3x1ks9ywimvavp2xyh8wkdvq7g968az1z5d6lz";
    };

    propagatedBuildInputs = [
	pyaml
	six
	validate-email
    ];

    buildInputs = [
	requests
	pudb
	pytest
	tornado
	httpretty
	flask
	webapp2
    ];

    meta = with lib; {
        description = "An OpenAPI (fka Swagger) client & converter in python, which is type-safe, dynamic, spec-compliant.";
        homepage = "https://github.com/pyopenapi/pyswagger";
    };
}
