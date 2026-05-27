Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.decodeUnknown

Creates a `decode` channel variant for schema-decoding channel boundaries.

**When to use**

Use when the encoded input type is intentionally unknown or untyped, so
that only the decoded output is statically typed according to the schema.

**Details**

The channel decodes non-empty encoded chunks into schema values, emits
`SchemaError` when decoding fails, and requires the schema's decoding
services.

**See**

- `decode` for the typed variant that preserves the schema's encoded type

**Signature**

```ts
declare const decodeUnknown: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Type"]>, IE | Schema.SchemaError, Done, Arr.NonEmptyReadonlyArray<S["Encoded"]>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L169)

Since v4.0.0