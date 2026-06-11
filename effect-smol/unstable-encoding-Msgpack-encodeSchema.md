Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.encodeSchema

Creates a MessagePack encoder channel for values of a schema.

**Details**

Values are first encoded with the schema and then packed as MessagePack bytes,
so the channel can fail with either schema errors or `MsgPackError`.

**Signature**

```ts
declare const encodeSchema: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, MsgPackError | Schema.SchemaError | IE, Done, Arr.NonEmptyReadonlyArray<S["Type"]>, IE, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L104)

Since v4.0.0