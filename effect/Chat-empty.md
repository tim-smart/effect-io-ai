Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.empty

Creates a new Chat service with empty conversation history.

This is the most common way to start a fresh chat session without
any initial context or system prompts.

**Example**

```ts
import { Chat } from "@effect/ai"
import { Effect } from "effect"

const freshChat = Effect.gen(function* () {
  const chat = yield* Chat.empty

  const response = yield* chat.generateText({
    prompt: "Hello! Can you introduce yourself?"
  })

  console.log(response.content)

  return chat
})
```

**Signature**

```ts
declare const empty: Effect.Effect<Service, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L327)

Since v1.0.0