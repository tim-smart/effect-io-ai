Package: `effect`<br />
Module: `Response`<br />

## Response.FinishPart

Response part indicating the completion of a response generation.

**Example**

```ts
import { Response } from "effect/unstable/ai"

const finishPart: Response.FinishPart = Response.makePart("finish", {
  reason: "stop",
  usage: new Response.Usage({
    inputTokens: {
      uncached: undefined,
      total: 50,
      cacheRead: undefined,
      cacheWrite: undefined
    },
    outputTokens: {
      total: 25,
      text: undefined,
      reasoning: undefined
    }
  }),
  response: undefined
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
  /**
   * Optional HTTP response details from the AI provider.
   */
  readonly response: typeof HttpResponseDetails.Type | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2398)

Since v1.0.0