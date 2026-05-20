Package: `effect`<br />
Module: `HttpServer`<br />

## HttpServer.TcpAddress

TCP address for an HTTP server, identified by hostname and port.

**Signature**

```ts
export interface TcpAddress {
  readonly _tag: "TcpAddress"
  readonly hostname: string
  readonly port: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpServer.ts#L86)

Since v4.0.0