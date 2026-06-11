Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.ReasoningPart

Content part carrying reasoning text in an assistant message, such as a
provider-supplied reasoning summary or explanation.

**Example** (Creating reasoning parts)

```ts
import { Prompt } from "effect/unstable/ai"

const reasoningPart: Prompt.ReasoningPart = Prompt.makePart("reasoning", {
  text:
    "Summary: the response compares the requested options by price and availability."
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L316)

Since v4.0.0