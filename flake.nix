{
  description = "datalab — categorized data-processing toolkits";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixpkgs-stable, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        pkgs-stable = import nixpkgs-stable { inherit system; };

        # Each attr here becomes `nix shell .#<name>` / `nix develop .#<name>`.
        categories = {
          sql = with pkgs; [
            duckdb
            sqlite
          ];

          json = with pkgs; [
            jq
            jqp
          ];

          yaml = with pkgs; [
            yq-go
          ];

          xml = with pkgs; [
            libxml2
            libxslt
            saxon-he
            xmlstarlet
          ];

          csv = with pkgs; [
            xan
            csvlens
            csvkit
            miller
          ];

          compression = with pkgs; [
            gzip
            xz
            bzip2
            lz4
            unzip
            zip
            gnutar
          ];

          fetch = with pkgs; [
            curl
          ];

          misc = with pkgs; [
            pv
            ncdu
          ];
        };

        mkEnv = name: paths: pkgs.buildEnv {
          name = "datalab-${name}";
          inherit paths;
        };

        categoryPackages = pkgs.lib.mapAttrs mkEnv categories;

        allTools = pkgs.lib.flatten (pkgs.lib.attrValues categories);

        banner = ''
          cat <<'BANNER'
           ____        _        _        _
          |  _ \  __ _| |_ __ _| |    __ _| |__
          | | | |/ _` | __/ _` | |   / _` | '_ \
          | |_| | (_| | || (_| | |__| (_| | |_) |
          |____/ \__,_|\__\__,_|_____\__,_|_.__/

          BANNER
          echo "categories: ${builtins.concatStringsSep ", " (builtins.attrNames categories)}"
          echo "try:  nix shell .#sql .#csv"
          echo
        '';
      in
      {
        packages = categoryPackages // {
          # `nix shell .#default` / `nix shell` (no arg) -> everything
          default = mkEnv "all" allTools;
        };

        devShells = pkgs.lib.mapAttrs
          (name: env: pkgs.mkShell {
            name = "datalab-${name}";
            buildInputs = [ env ];
            shellHook = banner;
          })
          categoryPackages // {
            default = pkgs.mkShell {
              name = "datalab";
              buildInputs = allTools;
              shellHook = banner;
            };
          };
      });
}
