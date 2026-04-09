Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.TextPart

Content part representing plain text.

The most basic content type used for textual information in messages.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

const textPart: Prompt.TextPart = Prompt.makePart("text", {
  text: "Hello, how can I help you today?"
})
```

**Signature**

```ts
export interface TextPart extends BasePart<"text", TextPartOptions> {
  /**
   * The text content.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L267)

Since v4.0.0