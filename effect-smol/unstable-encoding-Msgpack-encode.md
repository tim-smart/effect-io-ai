Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.encode

Creates a channel that encodes non-empty chunks of values as MessagePack byte
arrays.

**Details**

The channel fails with `MsgPackError` when any value cannot be packed.

**Signature**

```ts
declare const encode: <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, IE | MsgPackError, Done, Arr.NonEmptyReadonlyArray<unknown>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L95)

Since v4.0.0