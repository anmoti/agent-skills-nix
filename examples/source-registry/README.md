# Source registry example

This flake keeps skill repositories out of `flake.nix`. Human-edited source
metadata lives in `registry/sources/*.nix`; the generated
`registry/sources.lock.json` snapshots the normalized manifests and pins
revisions and hashes.

Update every source from this directory:

```console
nix run .#skills-sources-lock
```

Then review and commit both the manifests and lock file. The resulting
`sources` value is a selector tree accepted by `discoverCatalog`,
`selectSkills`, and Home Manager. Its nodes can also be passed directly to
`skills.enable` to select a repository, group, or individual skill.
