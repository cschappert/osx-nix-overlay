{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        ant
        bash-completion
        colordiff
        curl
        elixir
        git
        haskellPackages.ghc
        maven
        mongodb
        nkf
        jq
        manpages
        nix-bash-completions
        sbt
        scala
        stack
        sqlite
        tmux
        wget
      ];
      pathsToLink = [ "/share" "/share/man" "/share/doc" "/bin" "/Applications" ];
      extraOutputsToInstall = [ "man" "doc" ];
    };
  };
}
