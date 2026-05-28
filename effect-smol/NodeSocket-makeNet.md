Package: `@effect/platform-node-shared`<br />
Module: `NodeSocket`<br />

## NodeSocket.makeNet

Opens a Node TCP connection as an Effect socket.

**When to use**

Use to create a scoped `Socket.Socket` from Node `net.createConnection`.

**Details**

Supports `openTimeout` and closes or destroys the underlying socket when the
enclosing scope is finalized.

**Signature**

```ts
declare const makeNet: (options: Net.NetConnectOpts & { readonly openTimeout?: Duration.Input | undefined; }) => Effect.Effect<Socket.Socket>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocket.ts#L76)

Since v4.0.0