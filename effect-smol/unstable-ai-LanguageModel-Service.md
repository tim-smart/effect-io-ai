Package: `effect`<br />
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
  >(
    options: Options & GenerateTextOptions<Tools>
  ) => Effect.Effect<
    GenerateTextResponse<Tools>,
    ExtractError<Options>,
    ExtractServices<Options>
  >

  /**
   * Generate a structured object from a schema using the language model.
   */
  readonly generateObject: <
    ObjectEncoded extends Record<string, any>,
    StructuredOutputSchema extends Schema.Encoder<ObjectEncoded, unknown>,
    Options extends NoExcessProperties<
      GenerateObjectOptions<any, StructuredOutputSchema>,
      Options
    >,
    Tools extends Record<string, Tool.Any> = {}
  >(
    options: Options & GenerateObjectOptions<Tools, StructuredOutputSchema>
  ) => Effect.Effect<
    GenerateObjectResponse<Tools, StructuredOutputSchema["Type"]>,
    ExtractError<Options>,
    ExtractServices<Options> | StructuredOutputSchema["DecodingServices"]
  >

  /**
   * Generate text using the language model with streaming output.
   */
  readonly streamText: <
    Options extends NoExcessProperties<GenerateTextOptions<any>, Options>,
    Tools extends Record<string, Tool.Any> = {}
  >(
    options: Options & GenerateTextOptions<Tools>
  ) => Stream.Stream<
    Response.StreamPart<Tools>,
    ExtractError<Options>,
    ExtractServices<Options>
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L119)

Since v4.0.0