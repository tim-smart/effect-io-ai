Package: `effect`<br />
Module: `Socket`<br />

## Socket.toChannelString

Converts a `Socket` into a string `Channel`, decoding binary frames with the
optional text encoding.

**Signature**

```ts
declare const toChannelString: { (encoding?: string | undefined): <IE>(self: Socket) => Channel.Channel<NonEmptyReadonlyArray<string>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE>; <IE>(self: Socket, encoding?: string | undefined): Channel.Channel<NonEmptyReadonlyArray<string>, SocketError | IE, void, NonEmptyReadonlyArray<Uint8Array | string | CloseEvent>, IE>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Socket.ts#L464)

Since v4.0.0