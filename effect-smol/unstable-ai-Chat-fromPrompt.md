Package: `effect`<br />
Module: `Chat`<br />

## Chat.fromPrompt

Creates a new Chat service from an initial prompt.

This is the primary constructor for creating chat instances. It initializes
a new conversation with the provided prompt as the starting context.

**Example**

```ts
import { Effect } from "effect"
import { Chat } from "effect/unstable/ai"

const chatWithSystemPrompt = Effect.gen(function*() {
  const chat = yield* Chat.fromPrompt([{
    role: "system",
    content: "You are a helpful assistant specialized in mathematics."
  }])

  const response = yield* chat.generateText({
    prompt: "What is 2+2?"
  })

  return response.content
})
```

**Example**

```ts
import { Effect } from "effect"
import { Chat } from "effect/unstable/ai"

// Initialize with conversation history
const existingChat = Effect.gen(function*() {
  const chat = yield* Chat.fromPrompt([
    {
      role: "user",
      content: [{ type: "text", text: "What's the weather like?" }]
    },
    {
      role: "assistant",
      content: [{ type: "text", text: "I don't have access to weather data." }]
    },
    {
      role: "user",
      content: [{ type: "text", text: "Can you help me with coding?" }]
    }
  ])

  const response = yield* chat.generateText({
    prompt: "I need help with TypeScript"
  })

  return response
})
```

**Signature**

```ts
declare const fromPrompt: (prompt: Prompt.RawInput) => Effect.Effect<Service, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L492)

Since v4.0.0