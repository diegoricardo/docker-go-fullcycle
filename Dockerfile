FROM golang:1.3 AS build

WORKDIR /app

COPY . .

RUN go build -o Full-Cycle-Rocks

FROM scratch

WORKDIR /root/

COPY --from=build /app/Full-Cycle-Rocks .

ENTRYPOINT ["./Full-Cycle-Rocks"]