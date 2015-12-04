# Guardian Organisation page

## History

We have used this repo as an easy way to share dependencies when we haven't wanted to use Maven.

We **should no longer use this**! Instead publish your dependencies via JCenter or Maven Central.

In the future this page should just be organisation pages for the Guardian's GitHub presence.

## Releasing

This project is just a GitHub Organisation Page. Commit and push to master.

### Historical instructions for rebuilding the Maven index

Don't do this! But if you do...

1) Check the dependency into the repository
2) run `update-directory-index.sh` to create directory index.html files to help Nexus spider this repository
3) add, commit and push this repository

## Structure
/maven/repo-releases contains a maven release repository 
/maven/repo-snapshots contains a maven snapshot repository
