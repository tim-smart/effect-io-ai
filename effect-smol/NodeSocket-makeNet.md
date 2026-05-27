Package: `@effect/platform-node-shared`<br />
Module: `NodeSocket`<br />

## NodeSocket.makeNet

Opens a TCP connection with Node `net.createConnection` and exposes it as a
`Socket.Socket`, supporting `openTimeout` and closing or destroying the
socket when the enclosing scope is finalized.

**Signature**

```ts
declare const makeNet: (options: Net.NetConnectOpts & { readonly openTimeout?: Duration.Input | undefined; }) => Effect.Effect<Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocket.ts#L69)

Since v4.0.0