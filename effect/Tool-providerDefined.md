Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.providerDefined

Creates a provider-defined tool which leverages functionality built into a
large language model provider (e.g. web search, code execution).

These tools are executed by the large language model provider rather than
by your application. However, they can optionally require custom handlers
implemented in your application to process provider generated results.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

// Web search tool provided by OpenAI
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
      content: Schema.String
    }))
  })
})
```

**Signature**

```ts
declare const providerDefined: <const Name extends string, Args extends Schema.Struct.Fields = {}, Parameters extends Schema.Struct.Fields = {}, Success extends Schema.Schema.Any = typeof Schema.Void, Failure extends Schema.Schema.All = typeof Schema.Never, RequiresHandler extends boolean = false>(options: { readonly id: `${string}.${string}`; readonly toolkitName: Name; readonly providerName: string; readonly args: Args; readonly requiresHandler?: RequiresHandler | undefined; readonly parameters?: Parameters | undefined; readonly success?: Success | undefined; readonly failure?: Failure | undefined; }) => <Mode extends FailureMode | undefined = undefined>(args: RequiresHandler extends true ? Schema.Simplify<Schema.Struct.Encoded<Args> & { readonly failureMode?: Mode; }> : Schema.Simplify<Schema.Struct.Encoded<Args>>) => ProviderDefined<Name, { readonly args: Schema.Struct<Args>; readonly parameters: Schema.Struct<Parameters>; readonly success: Success; readonly failure: Failure; readonly failureMode: Mode extends undefined ? "error" : Mode; }, RequiresHandler>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1046)

Since v1.0.0