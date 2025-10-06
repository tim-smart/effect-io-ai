Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.ProviderDefined

A provider-defined tool is a tool which is built into a large language model
provider (e.g. web search, code execution).

These tools are executed by the large language model provider rather than
by your application. However, they can optionally require custom handlers
implemented in your application to process provider generated results.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

// Define a web search tool provided by OpenAI
const WebSearch = Tool.providerDefined({
  id: "openai.web_search",
  toolkitName: "WebSearch",
  providerName: "web_search",
  args: {
    query: Schema.String
  },
  success: Schema.Struct({
    results: Schema.Array(Schema.Struct({
      title: Schema.String,
      url: Schema.String,
      snippet: Schema.String
    }))
  })
})
```

**Signature**

```ts
export interface ProviderDefined<
  Name extends string,
  Config extends {
    readonly args: AnyStructSchema
    readonly parameters: AnyStructSchema
    readonly success: Schema.Schema.Any
    readonly failure: Schema.Schema.All
    readonly failureMode: FailureMode
  } = {
    readonly args: Schema.Struct<{}>
    readonly parameters: Schema.Struct<{}>
    readonly success: typeof Schema.Void
    readonly failure: typeof Schema.Never
    readonly failureMode: "error"
  },
  RequiresHandler extends boolean = false
> extends
  Tool<
    Name,
    {
      readonly parameters: Config["parameters"]
      readonly success: Config["success"]
      readonly failure: Config["failure"]
      readonly failureMode: Config["failureMode"]
    }
  >,
  Tool.ProviderDefinedProto
{
  /**
   * The arguments passed to the provider-defined tool.
   */
  readonly args: Config["args"]["Encoded"]

  /**
   * A `Schema` representing the arguments provided by the end-user which will
   * be used to configure the behavior of the provider-defined tool.
   */
  readonly argsSchema: Config["args"]

  /**
   * Name of the tool as recognized by the large language model provider.
   */
  readonly providerName: string

  /**
   * If set to `true`, this provider-defined tool will require a user-defined
   * tool call handler to be provided when converting the `Toolkit` containing
   * this tool into a `Layer`.
   */
  readonly requiresHandler: RequiresHandler

  /**
   * Decodes the result received after the provider-defined tool is called.
   */
  decodeResult(
    args: unknown
  ): Effect.Effect<Config["success"]["Type"], AiError.AiError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L293)

Since v1.0.0