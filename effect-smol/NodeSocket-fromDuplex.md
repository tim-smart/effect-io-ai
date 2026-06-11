Package: `@effect/platform-node-shared`<br />
Module: `NodeSocket`<br />

## NodeSocket.fromDuplex

Adapts a Node `Duplex` into a `Socket.Socket`, wiring data events to socket
handlers, providing a scoped writer, and mapping open, read, write, and close
failures to `SocketError`.

**Signature**

```ts
declare const fromDuplex: <RO>(open: Effect.Effect<Duplex, Socket.SocketError, RO>, options?: { readonly openTimeout?: Duration.Input | undefined; }) => Effect.Effect<Socket.Socket, never, Exclude<RO, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeSocket.ts#L108)

Since v4.0.0