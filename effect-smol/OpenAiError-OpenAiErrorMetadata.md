Package: `@effect/ai-openai-compat`<br />
Module: `OpenAiError`<br />

## OpenAiError.OpenAiErrorMetadata

OpenAI-specific error metadata fields.

**Signature**

```ts
type OpenAiErrorMetadata = {
  /**
   * The OpenAI error code returned by the API.
   */
  readonly errorCode: string | null
  /**
   * The OpenAI error type returned by the API.
   */
  readonly errorType: string | null
  /**
   * The unique request ID for debugging with OpenAI support.
   */
  readonly requestId: string | null
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai-compat/src/OpenAiError.ts#L11)

Since v1.0.0