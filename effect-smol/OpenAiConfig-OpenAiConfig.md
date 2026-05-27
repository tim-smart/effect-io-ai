Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiConfig`<br />

## OpenAiConfig.OpenAiConfig

Context service used to carry OpenAI-compatible client configuration for the
current Effect scope.

**When to use**

Use as the context service for OpenAI-compatible client configuration when you
need to provide or read scoped HTTP client transforms through Effect context.

**See**

- `withClientTransform` for scoping an HTTP client transformation

**Signature**

```ts
declare class OpenAiConfig
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiConfig.ts#L43)

Since v4.0.0