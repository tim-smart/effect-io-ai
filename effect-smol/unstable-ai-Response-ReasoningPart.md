Package: `effect`<br />
Module: `Response`<br />

## Response.ReasoningPart

Response part carrying provider-supplied reasoning text, such as an exposed
reasoning summary or explanation. Do not assume it contains hidden
chain-of-thought.

**Example** (Creating a reasoning part)

```ts
import { Response } from "effect/unstable/ai"

const reasoningPart: Response.ReasoningPart = Response.makePart("reasoning", {
  text:
    "Let me think step by step: First I need to analyze the user's question..."
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L869)

Since v4.0.0