FROM debian

RUN apt-get update && \
    apt-get install -y ca-certificates zip

ADD 'https://bintray.com/jfrog/jfrog-cli-go/download_file?file_path=1.20.1%2Fjfrog-cli-linux-amd64%2Fjfrog' /usr/local/bin/jfrog

RUN chmod +x /usr/local/bin/jfrog

ENTRYPOINT /usr/local/bin/jfrog
