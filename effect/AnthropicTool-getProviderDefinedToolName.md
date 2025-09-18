Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.getProviderDefinedToolName

A helper method which takes in the name of a tool as returned in the response
from a large language model provider, and returns either the provider-defined
name for of the tool as found in the corresponding `Toolkit`, or `undefined`
if the tool name is not a provider-defined tool.

For example, if the large language model provider returns the tool name
`"web_search"` in a response, calling this method would return `"AnthropicWebSearch"`.

This method is primarily exposed for use by other Effect provider
integrations which can utilize Anthropic tools (i.e. Amazon Bedrock).

**Signature**

```ts
declare const getProviderDefinedToolName: (name: string) => string | undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L553)

Since v1.0.0