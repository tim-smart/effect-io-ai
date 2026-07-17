Package: `effect`<br />
Module: `HttpServerRequest`<br />

## HttpServerRequest.upgradeChannel

Creates a channel backed by the current request's upgraded socket.

**Details**

The channel reads incoming socket messages and writes byte chunks to the
socket, failing if the request cannot be upgraded or the socket fails.

**Signature**

```ts
declare const upgradeChannel: <IE = never>() => Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array>, HttpServerError | IE | Socket.SocketError, void, Arr.NonEmptyReadonlyArray<string | Uint8Array | Socket.CloseEvent>, IE, unknown, HttpServerRequest>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpServerRequest.ts#L173)

Since v4.0.0