Package: `effect`<br />
Module: `Socket`<br />

## Socket.Socket

Effect-based socket abstraction for running string or binary read handlers
and obtaining a scoped writer for outgoing frames and close events.

**Signature**

```ts
export interface Socket {
  readonly [TypeId]: typeof TypeId
  readonly run: <_, E = never, R = never>(
    handler: (_: Uint8Array) => Effect.Effect<_, E, R> | void,
    options?: {
      readonly onOpen?: Effect.Effect<void> | undefined
    }
  ) => Effect.Effect<void, SocketError | E, R>
  readonly runString: <_, E = never, R = never>(
    handler: (_: string) => Effect.Effect<_, E, R> | void,
    options?: {
      readonly onOpen?: Effect.Effect<void> | undefined
    }
  ) => Effect.Effect<void, SocketError | E, R>
  readonly runRaw: <_, E = never, R = never>(
    handler: (_: string | Uint8Array) => Effect.Effect<_, E, R> | void,
    options?: {
      readonly onOpen?: Effect.Effect<void> | undefined
    }
  ) => Effect.Effect<void, SocketError | E, R>
  readonly writer: Effect.Effect<
    (chunk: Uint8Array | string | CloseEvent) => Effect.Effect<void, SocketError>,
    never,
    Scope.Scope
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Socket.ts#L66)

Since v4.0.0