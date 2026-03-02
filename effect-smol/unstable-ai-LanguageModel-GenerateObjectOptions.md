Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.GenerateObjectOptions

Configuration options for structured object generation.

**Signature**

```ts
export interface GenerateObjectOptions<
  Tools extends Record<string, Tool.Any>,
  StructuredOutputSchema extends Schema.Top
> extends GenerateTextOptions<Tools> {
  /**
   * The name of the structured output that should be generated. Used by some
   * large language model providers to provide additional guidance to the model.
   */
  readonly objectName?: string | undefined

  /**
   * The schema to be used to specify the structure of the object to generate.
   */
  readonly schema: StructuredOutputSchema
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L278)

Since v4.0.0