function nixsha --description "Given package name with version, get sha256 for nix"
    nix-prefetch-url --unpack http://hackage.haskell.org/package/$argv[1]/$argv[1].tar.gz
end
