Package: `effect`<br />
Module: `Msgpack`<br />

## Msgpack.decodeSchema

Creates a MessagePack decoder channel for values of a schema.

**Details**

The channel unpacks bytes into unknown values and then decodes each value with
the schema.

**Signature**

```ts
declare const decodeSchema: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Type"]>, Schema.SchemaError | MsgPackError | IE, Done, Arr.NonEmptyReadonlyArray<Uint8Array<ArrayBuffer>>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Msgpack.ts#L184)

Since v4.0.0