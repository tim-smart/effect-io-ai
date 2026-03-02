Package: `effect`<br />
Module: `Chat`<br />

## Chat.Chat

The `Chat` service tag for dependency injection.

This tag provides access to chat functionality throughout your application,
enabling persistent conversational AI interactions with full context
management.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L93)

Since v4.0.0