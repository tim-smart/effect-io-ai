Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ReasoningPart

Response part representing reasoning or chain-of-thought content.

Contains the internal reasoning process or explanation from the large
language model.

**Example**

```ts
import { Response } from "@effect/ai"

const reasoningPart: Response.ReasoningPart = Response.makePart("reasoning", {
  text: "Let me think step by step: First I need to analyze the user's question...",
})
```

**Signature**

```ts
export interface ReasoningPart extends BasePart<"reasoning", ReasoningPartMetadata> {
  /**
   * The reasoning or thought process text.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L857)

Since v1.0.0