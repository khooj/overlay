{ fetchFromGitHub, buildGoModule }:
buildGoModule rec {
    pname = "aws-es-proxy";
    version = "1.2";
    vendorSha256 = "sha256-/G4MQfu2VsvNy7ZDTN2nqtU36QfS59xWpq0gFYMj97c=";
    src = fetchFromGitHub {
        owner = "abutaha";
        repo = "aws-es-proxy";
        rev = "v${version}";
        sha256 = "sha256-TZOyDkK8fYHu0BdKQqI2/VkjyPT8ytvjNj1HZU0Rs9w=";
    };
}