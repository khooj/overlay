{
    lib,
    buildPythonPackage,
    fetchFromGitHub,
    requests,
}:

buildPythonPackage rec {
    pname = "curlify";
    version = "2.2.1";

    src = fetchFromGitHub {
        owner = "ofw";
        repo = "curlify";
        rev = "e124e6333ca69c86bd43a7b2189d57242ffc079c";
        sha256 = "1c2i18j38ggrg4xbmp96cz73crmyja0nys62cyw12r4jy5gni3fd";
    };

    propagatedBuildInputs = [
        requests
    ];

    meta = with lib; {
        description = "A library to convert python requests request object to curl command";
        homepage = "https://github.com/ofw/curlify";
    };
}