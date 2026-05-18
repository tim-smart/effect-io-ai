Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiConfig`<br />

## OpenAiConfig.withClientTransform

Provides an HTTP client transform for the supplied effect.

The transform is read by OpenAI-compatible provider services from the
`OpenAiConfig` context and can be used to add provider-specific behavior such
as headers, retries, instrumentation, or proxy routing.

**Signature**

```ts
declare const withClientTransform: { (transform: (client: HttpClient) => HttpClient): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Effect.Effect<A, E, R>, transform: (client: HttpClient) => HttpClient): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiConfig.ts#L79)

Since v4.0.0