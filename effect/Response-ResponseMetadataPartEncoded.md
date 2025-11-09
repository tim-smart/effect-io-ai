Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ResponseMetadataPartEncoded

Encoded representation of response metadata parts for serialization.

**Signature**

```ts
export interface ResponseMetadataPartEncoded
  extends BasePartEncoded<"response-metadata", ResponseMetadataPartMetadata>
{
  /**
   * Optional unique identifier for this specific response.
   */
  readonly id?: string | undefined
  /**
   * Optional identifier of the AI model that generated the response.
   */
  readonly modelId?: string | undefined
  /**
   * Optional timestamp when the response was generated.
   */
  readonly timestamp?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2089)

Since v1.0.0