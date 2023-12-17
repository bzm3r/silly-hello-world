{ lib, rustPlatform }:
rustPlatform.buildRustPackage rec {
  pname = "silly-hello-world";
  version = "0.1.0";

  src = ./.;

  cargoLock = { lockFile = ./Cargo.lock; };

  buildType = "release";

  meta = with lib; {
    description = "Helper for creating a new Rust scripting project";
    homepage = "https://github.com/bzm3r/silly-hello-world";
    license = with licenses; [ asl20 mit ];
    maintainers = with maintainers; [ ];
    mainProgram = "silly-hello-world";
  };
}
