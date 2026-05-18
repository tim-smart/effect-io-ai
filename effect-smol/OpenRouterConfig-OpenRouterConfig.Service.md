Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterConfig`<br />

## OpenRouterConfig.OpenRouterConfig.Service

Configuration values read by OpenRouter provider operations when resolving
the generated HTTP client.

**Signature**

```ts
export interface Service {
    readonly transformClient?: ((client: HttpClient) => HttpClient) | undefined
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterConfig.ts#L62)

Since v4.0.0