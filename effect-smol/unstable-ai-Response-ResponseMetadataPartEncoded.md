Package: `effect`<br />
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
  /**
   * Optional HTTP request details for the request made to the AI provider.
   */
  readonly request?: typeof HttpRequestDetails.Encoded | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2214)

Since v1.0.0