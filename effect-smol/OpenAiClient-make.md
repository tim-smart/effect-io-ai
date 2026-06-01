Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiClient`<br />

## OpenAiClient.make

Constructs an OpenAI-compatible client service from explicit options.

**When to use**

Use when you need the OpenAI-compatible client service value inside an effect.

**Details**

The returned service uses the current `HttpClient`, prepends `apiUrl` or
`https://api.openai.com/v1`, adds authentication and OpenAI
organization/project headers, accepts JSON responses, and applies
`transformClient` when provided.

**Gotchas**

A scoped `OpenAiConfig.withClientTransform` is applied when request helpers
run, after the `transformClient` option supplied to `make`.

**See**

- `layer` for providing this client from explicit options
- `layerConfig` for loading client settings from `Config`

**Signature**

```ts
declare const make: (options: Options) => Effect.Effect<Service, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiClient.ts#L148)

Since v4.0.0