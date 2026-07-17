Package: `effect`<br />
Module: `Socket`<br />

## Socket.toChannelMap

Converts a `Socket` into a bidirectional `Channel`, mapping incoming string
or binary frames and writing outgoing frame batches to the socket.

**Signature**

```ts
declare const toChannelMap: <IE, A>(self: Socket, f: (data: Uint8Array | string) => A) => Channel.Channel<NonEmptyReadonlyArray<A>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Socket.ts#L386)

Since v4.0.0