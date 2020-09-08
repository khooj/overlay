{
	lib,
	buildPythonPackage,
	fetchFromGitHub,
	webob,
	jinja2,
	mako,
	babel,
	pytz,
	pytest,
	mock,
	six,
}:

buildPythonPackage rec {
    pname = "webapp2";
    version = "3.0.0b1";

    src = fetchFromGitHub {
        owner = "GoogleCloudPlatform";
        repo = "${pname}";
        rev = "3.0.0b1";
        sha256 = "0c3k99m50g07jj3x1ks9ywimvavp2xyh8wkdvq7g968az1z5d6lz";
    };

    buildInputs = [
	webob
	jinja2
	babel
	pytz
	pytest
	mock
	six
    ];

    meta = with lib; {
        description = "webapp2 is a framework for Google App Engine";
        homepage = "https://github.com/GoogleCloudPlatform/webapp2";
    };
}
