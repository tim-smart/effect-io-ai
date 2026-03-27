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
  readonly generateText: {
    // No toolkit: force `{}` instead of falling back to `Record<string, Tool.Any>`.
    <Options extends NoExcessProperties<GenerateTextOptionsWithoutToolkit, Options>>(
      options: Options & GenerateTextOptionsWithoutToolkit
    ): Effect.Effect<
      GenerateTextResponse<{}>,
      ExtractError<Options>,
      ExtractServices<Options>
    >
    // Generic toolkit: preserve caller-supplied `Tools` in helpers like `<Tools>(toolkit: WithHandler<Tools>) => ...`.
    <
      Tools extends Record<string, Tool.Any>,
      Options extends NoExcessProperties<
        GenerateTextOptions<Tools> & { readonly toolkit: ToolkitInput<Tools> },
        Options
      >
    >(
      options: Options & GenerateTextOptions<Tools> & { readonly toolkit: ToolkitInput<Tools> }
    ): Effect.Effect<
      GenerateTextResponse<Tools>,
      ExtractError<Options>,
      ExtractServices<Options>
    >
    // Toolkit unions: recover distributive `ExtractTools<Options>` inference for `toolkitA | toolkitB` call sites.
    <
      Options extends {
        readonly toolkit: ToolkitOption<any>
      } & NoExcessProperties<GenerateTextOptions<any>, Options>
    >(
      options: Options & GenerateTextOptions<ExtractTools<Options>> & { readonly toolkit: Options["toolkit"] }
    ): Effect.Effect<
      GenerateTextResponse<ExtractTools<Options>>,
      ExtractError<Options>,
      ExtractServices<Options>
    >
  }

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
  readonly streamText: {
    // No toolkit: force `{}` instead of falling back to `Record<string, Tool.Any>`.
    <Options extends NoExcessProperties<GenerateTextOptionsWithoutToolkit, Options>>(
      options: Options & GenerateTextOptionsWithoutToolkit
    ): Stream.Stream<
      Response.StreamPart<{}>,
      ExtractError<Options>,
      ExtractServices<Options>
    >
    // Generic toolkit: preserve caller-supplied `Tools` in helpers like `<Tools>(toolkit: WithHandler<Tools>) => ...`.
    <
      Tools extends Record<string, Tool.Any>,
      Options extends NoExcessProperties<
        GenerateTextOptions<Tools> & { readonly toolkit: ToolkitInput<Tools> },
        Options
      >
    >(
      options: Options & GenerateTextOptions<Tools> & { readonly toolkit: ToolkitInput<Tools> }
    ): Stream.Stream<
      Response.StreamPart<Tools>,
      ExtractError<Options>,
      ExtractServices<Options>
    >
    // Toolkit unions: recover distributive `ExtractTools<Options>` inference for `toolkitA | toolkitB` call sites.
    <
      Options extends {
        readonly toolkit: ToolkitOption<any>
      } & NoExcessProperties<GenerateTextOptions<any>, Options>
    >(
      options: Options & GenerateTextOptions<ExtractTools<Options>> & { readonly toolkit: Options["toolkit"] }
    ): Stream.Stream<
      Response.StreamPart<ExtractTools<Options>>,
      ExtractError<Options>,
      ExtractServices<Options>
    >
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L119)

Since v4.0.0