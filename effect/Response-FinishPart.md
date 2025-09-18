Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.FinishPart

Response part indicating the completion of a response generation.

**Example**

```ts
import { Response } from "@effect/ai"

const finishPart: Response.FinishPart = Response.makePart("finish", {
  reason: "stop",
  usage: {
    inputTokens: 50,
    outputTokens: 25,
    totalTokens: 75
  }
})
```

**Signature**

```ts
export interface FinishPart extends BasePart<"finish", FinishPartMetadata> {
  /**
   * The reason why the model finished generating the response.
   */
  readonly reason: FinishReason
  /**
   * Token usage statistics for the request.
   */
  readonly usage: Usage
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2023)

Since v1.0.0