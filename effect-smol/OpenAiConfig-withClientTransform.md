Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiConfig`<br />

## OpenAiConfig.withClientTransform

Provides an HTTP client transform for the supplied effect.

**When to use**

Use this to add provider-specific OpenAI-compatible HTTP behavior, such as
headers, retries, instrumentation, or proxy routing.

**Details**

OpenAI-compatible provider services read the transform from the
`OpenAiConfig` context.

**Signature**

```ts
declare const withClientTransform: { (transform: (client: HttpClient) => HttpClient): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, transform: (client: HttpClient) => HttpClient): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiConfig.ts#L85)

Since v4.0.0