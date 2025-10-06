Package: `@effect/ai-anthropic`<br />
Module: `AnthropicLanguageModel`<br />

## AnthropicLanguageModel.prepareTools

A helper method which takes in large language model provider options from
the base Effect AI SDK as well as Anthropic request configuration options
and returns the prepared tools, tool choice, and Anthropic betas to include
in a request.

This method is primarily exposed for use by other Effect provider
integrations which can utilize Anthropic models (i.e. Amazon Bedrock).

**Signature**

```ts
declare const prepareTools: (options: LanguageModel.ProviderOptions, config: Config.Service) => Effect.Effect<{ readonly betas: ReadonlySet<string>; readonly tools: ReadonlyArray<AnthropicTools> | undefined; readonly toolChoice: typeof Generated.BetaToolChoice.Encoded | undefined; }, AiError.AiError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicLanguageModel.ts#L1433)

Since v1.0.0