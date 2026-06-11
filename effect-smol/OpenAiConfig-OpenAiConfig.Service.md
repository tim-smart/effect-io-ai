Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiConfig`<br />

## OpenAiConfig.OpenAiConfig.Service

Configuration consumed by OpenAI-compatible clients when they build or
resolve the underlying HTTP client.

**Signature**

```ts
export interface Service {
    readonly transformClient?: ((client: HttpClient) => HttpClient) | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiConfig.ts#L56)

Since v4.0.0