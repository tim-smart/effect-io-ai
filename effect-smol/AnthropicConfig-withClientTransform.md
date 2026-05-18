Package: `@effect/ai-anthropic`<br />
Module: `AnthropicConfig`<br />

## AnthropicConfig.withClientTransform

Runs an effect with an `AnthropicConfig` override that transforms the underlying `HttpClient` used by generated Anthropic requests.

**Signature**

```ts
declare const withClientTransform: { (transform: (client: HttpClient) => HttpClient): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, transform: (client: HttpClient) => HttpClient): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicConfig.ts#L74)

Since v4.0.0