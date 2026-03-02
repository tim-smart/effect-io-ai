Package: `effect`<br />
Module: `Tool`<br />

## Tool.providerDefined

Creates a provider-defined tool which leverages functionality built into a
large language model provider (e.g. web search, code execution).

These tools are executed by the large language model provider rather than
by your application. However, they can optionally require custom handlers
implemented in your application to process provider generated results.

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

// Web search tool provided by OpenAI
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
      content: Schema.String
    }))
  })
})
```

**Signature**

```ts
declare const providerDefined: <const Identifier extends `${string}.${string}`, const Name extends string, Args extends Schema.Top = Schema.Void, Parameters extends Schema.Top = Schema.Void, Success extends Schema.Top = Schema.Void, Failure extends Schema.Top = Schema.Never, RequiresHandler extends boolean = false>(options: { readonly id: Identifier; readonly customName: Name; readonly providerName: string; readonly args?: Args | undefined; readonly requiresHandler?: RequiresHandler | undefined; readonly parameters?: Parameters | undefined; readonly success?: Success | undefined; readonly failure?: Failure | undefined; }) => <Mode extends FailureMode | undefined = undefined>(args: RequiresHandler extends true ? Struct.Simplify<Args["Encoded"] & { readonly failureMode?: Mode | undefined; }> : Struct.Simplify<Args["Encoded"]>) => ProviderDefined<Identifier, Name, { readonly args: Args; readonly parameters: Parameters; readonly success: Success; readonly failure: Failure; readonly failureMode: Mode extends undefined ? "error" : Mode; }, RequiresHandler>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1348)

Since v1.0.0