Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.Address

Address where an HTTP server is listening.

**Details**

The address is either a TCP host and port or a Unix domain socket path.

**Signature**

```ts
type Address = UnixAddress | TcpAddress
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServer.ts#L68)

Since v4.0.0