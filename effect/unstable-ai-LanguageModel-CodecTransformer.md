Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.CodecTransformer

A function that transforms a `Schema.Codec` into a provider-compatible form for structured output generation.

**Details**

Different language model providers have varying constraints on the JSON
schemas they accept. A `CodecTransformer` rewrites a codec's encoded side to
satisfy those constraints while preserving the decoded type. A provider
schema may be less restrictive than the codec when the provider cannot
express every constraint; the returned codec remains authoritative for
validating model output.

**Signature**

```ts
type CodecTransformer = <T, E, RD, RE>(schema: Schema.ConstraintCodec<T, E, RD, RE>) => {
  readonly codec: Schema.ConstraintCodec<T, unknown, RD, RE>
  readonly jsonSchema: JsonSchema.JsonSchema
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LanguageModel.ts#L197)

Since v4.0.0