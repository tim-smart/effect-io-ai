Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.GenerateObjectOptions

Options for generating a structured object using a large language model.

**Signature**

```ts
export interface GenerateObjectOptions<A, I extends Record<string, unknown>, R> {
  /**
   * The prompt input to use to generate text.
   */
  readonly prompt: AiInput.Raw

  /**
   * An optional system message that will be part of the prompt.
   */
  readonly system?: string | undefined

  /**
   * The schema to be used to specify the structure of the object to generate.
   */
  readonly schema: Schema.Schema<A, I, R>

  /**
   * The identifier to use to associating the underlying tool call with the
   * generated output.
   */
  readonly toolCallId?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L166)

Since v1.0.0