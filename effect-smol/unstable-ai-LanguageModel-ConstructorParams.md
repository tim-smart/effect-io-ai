Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ConstructorParams

Parameters required to construct a LanguageModel service.

**Signature**

```ts
export interface ConstructorParams {
  /**
   * A method which requests text generation from the large language model
   * provider.
   *
   * The final result is returned when the large language model provider
   * finishes text generation.
   */
  readonly generateText: (
    options: ProviderOptions
  ) => Effect.Effect<Array<Response.PartEncoded>, AiError.AiError, IdGenerator>

  /**
   * A method which requests text generation from the large language model
   * provider.
   *
   * Intermediate results are streamed from the large language model provider.
   */
  readonly streamText: (
    options: ProviderOptions
  ) => Stream.Stream<Response.StreamPartEncoded, AiError.AiError, IdGenerator>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L633)

Since v4.0.0