Package: `effect`<br />
Module: `LanguageModel`<br />

## LanguageModel.ProviderOptions

Configuration options passed along to language model provider
implementations.

This interface defines the normalized options that are passed to the
underlying provider implementation, regardless of the specific provider being
used.

**Signature**

```ts
export interface ProviderOptions {
  /**
   * The prompt messages to use to generate text.
   */
  readonly prompt: Prompt.Prompt

  /**
   * The tools that the large language model will have available to provide
   * additional information which can be incorporated into its text generation.
   */
  readonly tools: ReadonlyArray<Tool.Any>

  /**
   * The format which the response should be provided in.
   *
   * If `"text"` is specified, the large language model response will be
   * returned as text.
   *
   * If `"json"` is specified, the large language model respose will be provided
   * as an JSON object that conforms to the shape of the specified schema.
   *
   * Defaults to `{ type: "text" }`.
   */
  readonly responseFormat:
    | {
      readonly type: "text"
    }
    | {
      readonly type: "json"
      readonly objectName: string
      readonly schema: Schema.Top
    }

  /**
   * The tool choice mode for the language model.
   * - `auto` (default): The model can decide whether or not to call tools, as
   *   well as which tools to call.
   * - `required`: The model **must** call a tool but can decide which tool will
   *   be called.
   * - `none`: The model **must not** call a tool.
   * - `{ tool: <tool_name> }`: The model must call the specified tool.
   * - `{ mode?: "auto" (default) | "required", "oneOf": [<tool-names>] }`: The
   *   model is restricted to the subset of tools specified by `oneOf`. When
   *   `mode` is `"auto"` or omitted, the model can decide whether or not a tool
   *   from the allowed subset of tools can be called. When `mode` is
   *   `"required"`, the model **must** call one tool from the allowed subset of
   *   tools.
   */
  readonly toolChoice: ToolChoice<any>

  /**
   * The span to use to trace interactions with the large language model.
   */
  readonly span: Span

  /**
   * The previous response identifier for incremental provider calls.
   */
  readonly previousResponseId: string | undefined

  /**
   * The prompt reduced to messages not yet seen by the provider.
   */
  readonly incrementalPrompt: Prompt.Prompt | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/LanguageModel.ts#L598)

Since v4.0.0