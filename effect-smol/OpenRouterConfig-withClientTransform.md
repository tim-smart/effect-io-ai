Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterConfig`<br />

## OpenRouterConfig.withClientTransform

Provides a scoped transform for the OpenRouter HTTP client used by provider
operations.

**When to use**

Use when a single effect or workflow needs temporary OpenRouter HTTP client
customization without rebuilding the client layer.

**Details**

Supports both data-first and data-last forms. The transform is stored in the
scoped `OpenRouterConfig` service and read by generated OpenRouter request
operations while running the supplied effect.

**Gotchas**

If a transform is already present in the scoped config, this helper replaces
it. Compose transforms manually when both should apply. Streaming chat
completion requests are sent directly by `OpenRouterClient.make` and do not
read this scoped transform.

**Signature**

```ts
declare const withClientTransform: { (transform: (client: HttpClient) => HttpClient): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, transform: (client: HttpClient) => HttpClient): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterConfig.ts#L112)

Since v4.0.0