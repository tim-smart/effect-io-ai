Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.Service

The service interface for language model operations.

Defines the contract that all language model implementations must fulfill,
providing text generation, structured output, and streaming capabilities.

**Signature**

```ts
export interface Service {
  /**
   * Generate text using the language model.
   */
  readonly generateText: <
    Options extends NoExcessProperties<GenerateTextOptions<any>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(options: Options & GenerateTextOptions<Tools>) => Effect.Effect<
    GenerateTextResponse<Tools>,
    ExtractError<Options>,
    ExtractContext<Options>
  >

  /**
   * Generate a structured object from a schema using the language model.
   */
  readonly generateObject: <
    A,
    I extends Record<string, unknown>,
    R,
    Options extends NoExcessProperties<GenerateObjectOptions<any, A, I, R>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(options: Options & GenerateObjectOptions<Tools, A, I, R>) => Effect.Effect<
    GenerateObjectResponse<Tools, A>,
    ExtractError<Options>,
    R | ExtractContext<Options>
  >

  /**
   * Generate text using the language model with streaming output.
   */
  readonly streamText: <
    Options extends NoExcessProperties<GenerateTextOptions<any>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(options: Options & GenerateTextOptions<Tools>) => Stream.Stream<
    Response.StreamPart<Tools>,
    ExtractError<Options>,
    ExtractContext<Options>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L114)

Since v1.0.0