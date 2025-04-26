FROM golang:1.20
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o tasky
COPY wizexercise.txt /app/wizexercise.txt
EXPOSE 8080
CMD ["./tasky"]

