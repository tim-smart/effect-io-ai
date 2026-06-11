Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.decode

Creates a channel that decodes MessagePack byte chunks into values.

**Details**

Incomplete frames are buffered across chunks, and invalid MessagePack data
fails with `MsgPackError`.

**Signature**

```ts
declare const decode: <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, IE | MsgPackError, Done, Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L128)

Since v4.0.0