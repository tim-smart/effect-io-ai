Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.duplex

Wraps a bidirectional byte channel with MessagePack encoding and decoding.

**Details**

Outgoing values are packed as MessagePack bytes before reaching the wrapped
channel, and incoming bytes are unpacked into values.

**Signature**

```ts
declare const duplex: <R, IE, OE, OutDone, InDone>(self: Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, OE, OutDone, Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, IE | MsgPackError, InDone, R>) => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, MsgPackError | OE, OutDone, Arr.NonEmptyReadonlyArray<unknown>, IE, InDone, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Msgpack.ts#L208)

Since v4.0.0