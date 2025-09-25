Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.fromMessages

Creates a Prompt from an array of messages.

**Example**

```ts
import { Prompt } from "@effect/ai"

const messages: ReadonlyArray<Prompt.Message> = [
  Prompt.makeMessage("system", {
    content: "You are a coding assistant."
  }),
  Prompt.makeMessage("user", {
    content: [Prompt.makePart("text", { text: "Help me with TypeScript" })]
  })
]

const prompt = Prompt.fromMessages(messages)
```

**Signature**

```ts
declare const fromMessages: (messages: ReadonlyArray<Message>) => Prompt
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1394)

Since v1.0.0