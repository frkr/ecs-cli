FROM garland/aws-cli-docker:latest
RUN apk add curl wget jq --no-cache
RUN curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli
ENTRYPOINT "/bin/ash"
