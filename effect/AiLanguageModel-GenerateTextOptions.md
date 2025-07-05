Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.GenerateTextOptions

Options for generating text using a large language model.

**Signature**

```ts
export interface GenerateTextOptions<Tools extends AiTool.Any> {
  /**
   * The prompt input to use to generate text.
   */
  readonly prompt: AiInput.Raw

  /**
   * An optional system message that will be part of the prompt.
   */
  readonly system?: string | undefined

  /**
   * A toolkit containing both the tools and the tool call handler to use to
   * augment text generation.
   */
  readonly toolkit?: AiToolkit.ToHandler<Tools> | Effect.Effect<AiToolkit.ToHandler<Tools>, any, any>

  /**
   * The tool choice mode for the language model.
   *
   * - `auto` (default): The model can decide whether or not to call tools, as well as which tools to call.
   * - `required`: The model **must** call a tool but can decide which tool will be called.
   * - `none`: The model **must not** call a tool.
   * - `{ tool: <tool_name> }`: The model must call the specified tool.
   */
  readonly toolChoice?: ToolChoice<Tools>

  /**
   * The concurrency level for resolving tool calls.
   */
  readonly concurrency?: Concurrency | undefined

  /**
   * When set to `true`, tool calls requested by the large language model
   * will not be auto-resolved by the framework.
   *
   * This option is useful when:
   *   1. The user wants to include tool call definitions from an `AiToolki`
   *      in requests to the large language model so that the model has the
   *      capability to call tools
   *   2. The user wants to control the execution of tool call resolvers
   *      instead of having the framework handle tool call resolution
   */
  readonly disableToolCallResolution?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L114)

Since v1.0.0