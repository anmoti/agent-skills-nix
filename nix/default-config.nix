{ agentLib }:

{
  # Consumer flakes add their own sources and selection. The root flake stays neutral.
  sources = { };
  skills = {
    enable = [ ];
    exclude = [ ];
    enableAll = false;
    flatten = false;
    explicit = { };
  };
  targets = agentLib.defaultTargets;
  excludePatterns = agentLib.defaultExcludePatterns;
}
