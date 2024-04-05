FROM golang:1.22
WORKDIR /app
COPY ./ /app
RUN go build main.go -o /main
EXPOSE 8080
EXPOSE 3000
CMD ["/main"]
