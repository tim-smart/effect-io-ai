Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.decodeUnknown

Creates a `decode` channel variant for schema-decoding channel boundaries.

The channel decodes non-empty encoded chunks into schema values, emits
`SchemaError` when decoding fails, and requires the schema's decoding
services.

**Signature**

```ts
declare const decodeUnknown: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Type"]>, IE | Schema.SchemaError, Done, Arr.NonEmptyReadonlyArray<S["Encoded"]>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L137)

Since v4.0.0