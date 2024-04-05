FROM golang:1.22.0
WORKDIR /app
COPY ./ /app
RUN go build -o /main
EXPOSE 8080
EXPOSE 3000
CMD ["/main"]
