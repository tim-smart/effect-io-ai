Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.UserMessage

Message representing user input or questions.

**Example**

```ts
import { Prompt } from "@effect/ai"

const textUserMessage: Prompt.UserMessage = Prompt.makeMessage("user", {
  content: [
    Prompt.makePart("text", {
      text: "Can you analyze this image for me?"
    })
  ]
})

const multimodalUserMessage: Prompt.UserMessage = Prompt.makeMessage("user", {
  content: [
    Prompt.makePart("text", {
      text: "What do you see in this image?"
    }),
    Prompt.makePart("file", {
      mediaType: "image/jpeg",
      fileName: "vacation.jpg",
      data: "data:image/jpeg;base64,..."
    })
  ]
})
```

**Signature**

```ts
export interface UserMessage extends BaseMessage<"user", UserMessageOptions> {
  /**
   * Array of content parts that make up the user's message.
   */
  readonly content: ReadonlyArray<UserMessagePart>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L829)

Since v1.0.0