Package: `effect`<br />
Module: `Chat`<br />

## Chat.Chat

Service tag for stateful AI conversation sessions.

**When to use**

Use to access or provide conversational AI sessions through the Effect
context.

**Details**

This tag provides access to chat functionality throughout your application,
enabling persistent conversational AI interactions with full context
management.

**Example** (Using the Chat service)

```ts
import { Effect } from "effect"
import { Chat } from "effect/unstable/ai"

const program = Effect.gen(function*() {
  const chat = yield* Chat.empty
  const response = yield* chat.generateText({
    prompt: "Explain quantum computing in simple terms"
  })
  return response.content
})
```

**Signature**

```ts
declare class Chat
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L113)

Since v4.0.0