Package: `effect`<br />
Module: `SocketServer`<br />

## SocketServer.TcpAddress

TCP socket server address with hostname and port.

**Signature**

```ts
export interface TcpAddress {
  readonly _tag: "TcpAddress"
  readonly hostname: string
  readonly port: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SocketServer.ts#L146)

Since v4.0.0