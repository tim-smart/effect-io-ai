Package: `@effect/platform-node-shared`<br />
Module: `NodeSocket`<br />

## NodeSocket.makeNetChannel

Creates a `Channel` over a TCP socket, reading arrays of `Uint8Array`
chunks and writing arrays of bytes, strings, or socket close events.

**Signature**

```ts
declare const makeNetChannel: <IE = never>(options: Net.NetConnectOpts) => Channel.Channel<Array.NonEmptyReadonlyArray<Uint8Array>, Socket.SocketError | IE, void, Array.NonEmptyReadonlyArray<Uint8Array | string | Socket.CloseEvent>, IE>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node-shared/src/NodeSocket.ts#L246)

Since v4.0.0