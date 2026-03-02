Package: `effect`<br />
Module: `Tool`<br />

## Tool.ProviderDefined

A provider-defined tool is a tool which is built into a large language model
provider (e.g. web search, code execution).

These tools are executed by the large language model provider rather than
by your application. However, they can optionally require custom handlers
implemented in your application to process provider generated results.

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

// Define a web search tool provided by OpenAI
const WebSearch = Tool.providerDefined({
  id: "openai.web_search",
  customName: "OpenAiWebSearch",
  providerName: "web_search",
  args: Schema.Struct({
    query: Schema.String
  }),
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
  out Identifier extends `${string}.${string}`,
  out Name extends string,
  out Config extends {
    readonly args: Schema.Top
    readonly parameters: Schema.Top
    readonly success: Schema.Top
    readonly failure: Schema.Top
    readonly failureMode: FailureMode
  },
  out RequiresHandler extends boolean = false
> extends
  Tool<
    Name,
    {
      readonly parameters: Config["parameters"]
      readonly success: Config["success"]
      readonly failure: Config["failure"]
      readonly failureMode: Config["failureMode"]
    }
  >
{
  readonly [ProviderDefinedTypeId]: typeof ProviderDefinedTypeId

  /**
   * the identifier which is used to uniquely identify the provider-defined tool.
   */
  readonly id: Identifier

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
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L356)

Since v1.0.0