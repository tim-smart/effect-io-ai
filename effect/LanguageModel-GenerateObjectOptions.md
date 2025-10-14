Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.GenerateObjectOptions

Configuration options for structured object generation.

**Signature**

```ts
export interface GenerateObjectOptions<Tools extends Record<string, Tool.Any>, A, I extends Record<string, unknown>, R>
  extends GenerateTextOptions<Tools>
{
  /**
   * The name of the structured output that should be generated. Used by some
   * large language model providers to provide additional guidance to the model.
   */
  readonly objectName?: string | undefined

  /**
   * The schema to be used to specify the structure of the object to generate.
   */
  readonly schema: Schema.Schema<A, I, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L217)

Since v1.0.0