Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.make

Constructs an OpenAI-compatible client service from explicit options.

The returned service applies the configured base URL, authentication, and
OpenAI organization/project headers to the underlying HTTP client.

**Signature**

```ts
declare const make: (options: Options) => Effect.Effect<Service, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L115)

Since v4.0.0