Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterClient`<br />

## OpenRouterClient.make

Creates an OpenRouter client service from explicit options.

**When to use**

Use when you need the OpenRouter client service value inside an effect.

**Details**

The returned service uses the current `HttpClient`, prepends `apiUrl` or
`https://openrouter.ai/api/v1`, adds the bearer token and optional
`HTTP-Referer` and `X-Title` headers, accepts JSON responses, and applies
`transformClient` when provided.

**Gotchas**

Scoped `OpenRouterConfig.withClientTransform` applies to generated client
request methods. Streaming chat completion requests are sent directly by this
module and do not read that scoped transform.

**See**

- `layer` for providing this client from explicit options
- `layerConfig` for loading client settings from `Config`

**Signature**

```ts
declare const make: (options: Options) => Effect.Effect<Service, never, HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterClient.ts#L166)

Since v4.0.0