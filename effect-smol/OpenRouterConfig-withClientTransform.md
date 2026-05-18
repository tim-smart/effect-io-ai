Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterConfig`<br />

## OpenRouterConfig.withClientTransform

Provides a scoped transform for the OpenRouter HTTP client used by provider
operations.

**Signature**

```ts
declare const withClientTransform: { (transform: (client: HttpClient) => HttpClient): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, transform: (client: HttpClient) => HttpClient): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterConfig.ts#L74)

Since v4.0.0