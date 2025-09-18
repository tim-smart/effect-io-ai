Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.fromPrompt

Creates a new Chat service from an initial prompt.

This is the primary constructor for creating chat instances. It initializes
a new conversation with the provided prompt as the starting context.

**Example**

```ts
import { Chat, Prompt } from "@effect/ai"
import { Effect } from "effect"

const chatWithSystemPrompt = Effect.gen(function* () {
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
import { Chat, Prompt } from "@effect/ai"
import { Effect } from "effect"

// Initialize with conversation history
const existingChat = Effect.gen(function* () {
  const chat = yield* Chat.fromPrompt([
    { role: "user", content: [{ type: "text", text: "What's the weather like?" }] },
    { role: "assistant", content: [{ type: "text", text: "I don't have access to weather data." }] },
    { role: "user", content: [{ type: "text", text: "Can you help me with coding?" }] }
  ])

  const response = yield* chat.generateText({
    prompt: "I need help with TypeScript"
  })

  return response
})
```

**Signature**

```ts
declare const fromPrompt: (prompt: Prompt.RawInput) => Effect.Effect<Service, never, LanguageModel.LanguageModel>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L336)

Since v1.0.0