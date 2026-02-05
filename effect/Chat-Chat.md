Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.Chat

The `Chat` service tag for dependency injection.

This tag provides access to chat functionality throughout your application,
enabling persistent conversational AI interactions with full context
management.

**Example**

```ts
import { Chat } from "@effect/ai"
import * as Effect from "effect/Effect"

const useChat = Effect.gen(function* () {
  const chat = yield* Chat.Chat
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L95)

Since v1.0.0