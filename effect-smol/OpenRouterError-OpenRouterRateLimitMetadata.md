Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterError`<br />

## OpenRouterError.OpenRouterRateLimitMetadata

OpenRouter-specific rate limit metadata fields.

**Signature**

```ts
type OpenRouterRateLimitMetadata = OpenRouterErrorMetadata & {
  readonly limit: string | null
  readonly remaining: number | null
  readonly resetRequests: string | null
  readonly resetTokens: string | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterError.ts#L37)

Since v1.0.0