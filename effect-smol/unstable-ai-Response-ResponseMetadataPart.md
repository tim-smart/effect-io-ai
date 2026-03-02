Package: `effect`<br />
Module: `Response`<br />

## Response.ResponseMetadataPart

Response part containing metadata about the large language model response.

**Example**

```ts
import { DateTime } from "effect"
import { Response } from "effect/unstable/ai"

const metadataPart: Response.ResponseMetadataPart = Response.makePart(
  "response-metadata",
  {
    id: "resp_123",
    modelId: "gpt-4",
    timestamp: DateTime.nowUnsafe(),
    request: undefined
  }
)
```

**Signature**

```ts
export interface ResponseMetadataPart extends BasePart<"response-metadata", ResponseMetadataPartMetadata> {
  /**
   * Optional unique identifier for this specific response.
   */
  readonly id: string | undefined
  /**
   * Optional identifier of the AI model that generated the response.
   */
  readonly modelId: string | undefined
  /**
   * Optional timestamp when the response was generated.
   */
  readonly timestamp: DateTime.Utc | undefined
  /**
   * Optional HTTP request details for the request made to the AI provider.
   */
  readonly request: typeof HttpRequestDetails.Type | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2191)

Since v1.0.0