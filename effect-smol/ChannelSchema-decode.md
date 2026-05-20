Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.decode

Creates a channel that decodes non-empty chunks from the schema's encoded
representation into schema values.

**Details**

Decoding failures are emitted as `SchemaError`, and any decoding services
required by the schema become channel requirements.

**Signature**

```ts
declare const decode: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Type"]>, IE | Schema.SchemaError, Done, Arr.NonEmptyReadonlyArray<S["Encoded"]>, IE, Done, S["DecodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L117)

Since v4.0.0