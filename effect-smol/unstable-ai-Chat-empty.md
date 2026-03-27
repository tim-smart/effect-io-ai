Package: `effect`<br />
Module: `Chat`<br />

## Chat.empty

Creates a new Chat service with empty conversation history.

This is the most common way to start a fresh chat session without
any initial context or system prompts.

**Example**

```ts
import { Effect } from "effect"
import { Chat } from "effect/unstable/ai"

const freshChat = Effect.gen(function*() {
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L483)

Since v4.0.0