# Java 17 Docker image builder

This simple dockerfile allows you to specify a repository and a branch name to clone and build java source.
Currently, the build result must be application.jar

# Docker build args
|Argument|Description|
|--------|-----------|
|REPOSITORY|Link to a repository|
|BRANCH|Branch of the repository that will be used|
