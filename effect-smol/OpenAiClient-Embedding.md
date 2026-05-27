Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.Embedding

Represents one embedding item returned by an OpenAI-compatible embeddings API.

**Details**

The embedding can be returned either as a numeric vector or as a base64-encoded
string. The `index` field identifies the input item that produced this
embedding.

**Signature**

```ts
type Embedding = {
  readonly embedding: ReadonlyArray<number> | string
  readonly index: number
  readonly object?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L879)

Since v4.0.0