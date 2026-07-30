Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.SystemMessage

Message representing system instructions or context.

**Example**

```ts
import { Prompt } from "@effect/ai"

const systemMessage: Prompt.SystemMessage = Prompt.makeMessage("system", {
  content: "You are a helpful assistant specialized in mathematics. " +
   "Always show your work step by step."
})
```

**Signature**

```ts
export interface SystemMessage extends BaseMessage<"system", SystemMessageOptions> {
  /**
   * The system instruction or context as plain text.
   */
  readonly content: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L860)

Since v1.0.0