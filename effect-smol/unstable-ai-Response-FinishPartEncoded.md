Package: `effect`<br />
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
  /**
   * Optional HTTP response details from the AI provider.
   */
  readonly response?: typeof HttpResponseDetails.Encoded | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2421)

Since v1.0.0