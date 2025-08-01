{

  inputs = {
    miso.url = "github:dmjio/miso";
  };

  outputs = inputs:
    inputs.miso.inputs.flake-utils.lib.eachDefaultSystem (system: {
      devShell = inputs.miso.outputs.devShells.${system}.default;
      devShells.typescript = inputs.miso.outputs.devShells.${system}.typescript;
    });

}

