Package: `@effect/ai-openrouter`<br />
Module: `OpenRouterError`<br />

## OpenRouterError.OpenRouterErrorMetadata

OpenRouter-specific error metadata fields.

**Signature**

```ts
type OpenRouterErrorMetadata = {
  /**
   * The error code returned by the API.
   */
  readonly errorCode: string | number | null
  /**
   * The error type returned by the API.
   */
  readonly errorType: string | null
  /**
   * The unique request ID for debugging.
   */
  readonly requestId: string | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openrouter/src/OpenRouterError.ts#L16)

Since v1.0.0