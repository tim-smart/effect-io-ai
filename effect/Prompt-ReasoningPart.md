Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ReasoningPart

Content part representing reasoning or chain-of-thought.

**Example**

```ts
import { Prompt } from "@effect/ai"

const reasoningPart: Prompt.ReasoningPart = Prompt.makePart("reasoning", {
  text: "Let me think step by step: First I need to understand the user's question...",
})
```

**Signature**

```ts
export interface ReasoningPart extends BasePart<"reasoning", ReasoningPartOptions> {
  /**
   * The reasoning or thought process text.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L341)

Since v1.0.0