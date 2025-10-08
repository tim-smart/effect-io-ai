Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ResponseMetadataPart

Response part containing metadata about the large language model response.

**Example**

```ts
import { Response } from "@effect/ai"
import { Option, DateTime } from "effect"

const metadataPart: Response.ResponseMetadataPart = Response.makePart("response-metadata", {
  id: Option.some("resp_123"),
  modelId: Option.some("gpt-4"),
  timestamp: Option.some(DateTime.unsafeNow())
})
```

**Signature**

```ts
export interface ResponseMetadataPart extends BasePart<"response-metadata", ResponseMetadataPartMetadata> {
  /**
   * Optional unique identifier for this specific response.
   */
  readonly id: Option.Option<string>
  /**
   * Optional identifier of the AI model that generated the response.
   */
  readonly modelId: Option.Option<string>
  /**
   * Optional timestamp when the response was generated.
   */
  readonly timestamp: Option.Option<DateTime.Utc>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2063)

Since v1.0.0