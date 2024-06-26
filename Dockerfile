FROM golang:1.22.2-alpine3.19
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o jk-golang-webapp-books .
EXPOSE 8080
CMD ["./jk-golang-webapp-books"]
