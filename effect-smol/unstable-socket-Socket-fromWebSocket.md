Package: `effect`<br />
Module: `Socket`<br />

## Socket.fromWebSocket

Builds a `Socket` from a scoped WebSocket acquisition effect, waiting for the
socket to open, dispatching message handlers in fibers, and translating
open, read, and close events into `SocketError` values.

**Signature**

```ts
declare const fromWebSocket: <RO>(acquire: Effect.Effect<globalThis.WebSocket, SocketError, RO>, options?: { readonly closeCodeIsError?: ((code: number) => boolean) | undefined; readonly openTimeout?: Duration.Input | undefined; } | undefined) => Effect.Effect<Socket, never, Exclude<RO, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L606)

Since v4.0.0