Package: `effect`<br />
Module: `ChannelSchema`<br />

## ChannelSchema.encode

Creates a channel that encodes non-empty chunks of schema values into the
schema's encoded representation.

**When to use**

Use to encode typed channel input into the schema's encoded representation
before passing chunks to an encoded downstream boundary.

**Details**

Encoding failures are emitted as `SchemaError`, and any encoding services
required by the schema become channel requirements.

**See**

- `encodeUnknown` for encoded output chunks that should be typed as `unknown`
- `decode` for the inverse channel that decodes encoded chunks into schema values

**Signature**

```ts
declare const encode: <S extends Schema.Top>(schema: S) => <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<S["Encoded"]>, IE | Schema.SchemaError, Done, Arr.NonEmptyReadonlyArray<S["Type"]>, IE, Done, S["EncodingServices"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChannelSchema.ts#L36)

Since v4.0.0