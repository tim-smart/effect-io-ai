Package: `effect`<br />
Module: `Socket`<br />

## Socket.toChannel

Converts a `Socket` into a binary `Channel`, encoding incoming string frames
as UTF-8 bytes.

**Signature**

```ts
declare const toChannel: <IE>(self: Socket) => Channel.Channel<NonEmptyReadonlyArray<Uint8Array>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Socket.ts#L453)

Since v4.0.0