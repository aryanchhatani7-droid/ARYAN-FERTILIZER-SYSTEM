{ pkgs }: {
  deps = [
    pkgs.python310
    pkgs.python310Packages.fastapi
    pkgs.python310Packages.sqlalchemy
    pkgs.python310Packages."uvicorn[standard]"
    pkgs.python310Packages.python-multipart
    pkgs.python310Packages.passlib
    pkgs.python310Packages.python-jose
    pkgs.python310Packages.asyncpg
    pkgs.python310Packages.pydantic
    pkgs.postgresql
    pkgs.nodejs
    pkgs.yarn
  ];
  env = {
    PYTHONPATH = "$PYTHONPATH:${pwd}/backend";
  };
}
