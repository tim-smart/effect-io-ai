Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.encodeUnknown

Creates an `encode` channel variant whose encoded output chunks are typed as
`unknown`.

**When to use**

Use when a channel boundary should encode typed input chunks while the encoded
output representation is intentionally untyped.

**See**

- `encode` for the variant that preserves the schema encoded type

**Signature**

```ts
declare const encodeUnknown: <S extends Schema.Constraint>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, IE | Schema.SchemaError, Done, Arr.NonEmptyReadonlyArray<S["Type"]>, IE, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L66)

Since v4.0.0