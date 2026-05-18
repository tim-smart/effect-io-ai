Package: `effect`<br />
Module: `Socket`<br />

## Socket.make

Constructs a `Socket` from a raw read loop and scoped writer, deriving binary
and string read loops when they are not provided.

**Signature**

```ts
declare const make: (options: { readonly runRaw: <_, E, R>(handler: (_: string | Uint8Array) => Effect.Effect<_, E, R> | void, options?: { readonly onOpen?: Effect.Effect<void> | undefined; }) => Effect.Effect<void, SocketError | E, R>; readonly run?: <_, E, R>(handler: (_: Uint8Array) => Effect.Effect<_, E, R> | void, options?: { readonly onOpen?: Effect.Effect<void> | undefined; }) => Effect.Effect<void, SocketError | E, R>; readonly runString?: <_, E, R>(handler: (_: string) => Effect.Effect<_, E, R> | void, options?: { readonly onOpen?: Effect.Effect<void> | undefined; }) => Effect.Effect<void, SocketError | E, R>; readonly writer: Effect.Effect<(chunk: Uint8Array | string | CloseEvent) => Effect.Effect<void, SocketError>, never, Scope.Scope>; }) => Socket
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L110)

Since v4.0.0