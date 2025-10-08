Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.FinishPartEncoded

Encoded representation of finish parts for serialization.

**Signature**

```ts
export interface FinishPartEncoded extends BasePartEncoded<"finish", FinishPartMetadata> {
  /**
   * The reason why the model finished generating the response.
   */
  readonly reason: typeof FinishReason.Encoded
  /**
   * Token usage statistics for the request.
   */
  readonly usage: typeof Usage.Encoded
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2258)

Since v1.0.0