Package: `effect`<br />
Module: `Socket`<br />

## Socket.fromTransformStream

Builds a `Socket` from a scoped `InputTransformStream`, reading incoming
chunks through socket handlers and writing outgoing chunks to the writable
stream, encoding strings as UTF-8 and using close-code classification for
`CloseEvent` values.

**Signature**

```ts
declare const fromTransformStream: <R>(acquire: Effect.Effect<InputTransformStream, SocketError, R>, options?: { readonly closeCodeIsError?: (code: number) => boolean; }) => Effect.Effect<Socket, never, Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L829)

Since v4.0.0