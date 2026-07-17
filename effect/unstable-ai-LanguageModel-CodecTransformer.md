Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.CodecTransformer

A function that transforms a `Schema.Codec` into a provider-compatible form for structured output generation.

**Details**

Different language model providers have varying constraints on the JSON
schemas they accept. A `CodecTransformer` rewrites a codec's encoded side to
satisfy those constraints while preserving the decoded type.

**Signature**

```ts
type CodecTransformer = <T, E, RD, RE>(schema: Schema.ConstraintCodec<T, E, RD, RE>) => {
  readonly codec: Schema.ConstraintCodec<T, unknown, RD, RE>
  readonly jsonSchema: JsonSchema.JsonSchema
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/LanguageModel.ts#L194)

Since v4.0.0