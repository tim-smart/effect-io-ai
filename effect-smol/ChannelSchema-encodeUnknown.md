Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.encodeUnknown

Creates an `encode` channel variant whose encoded output chunks are typed as
`unknown`.

**When to use**

Use this at channel boundaries where the encoded representation is
intentionally untyped, while still encoding typed input chunks with the
provided schema.

**Signature**

```ts
declare const encodeUnknown: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, IE | Schema.SchemaError, Done, Arr.NonEmptyReadonlyArray<S["Type"]>, IE, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L93)

Since v4.0.0