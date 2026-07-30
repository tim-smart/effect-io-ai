Package: `@effect/ai`<br />
Module: `index`<br />

## index.Chat

Re-exports all named exports from the "./Chat.js" module as `Chat`.

**Example**

```ts
import { Chat, LanguageModel } from "@effect/ai"
import { Effect, Layer } from "effect"

// Create a new chat session
const program = Effect.gen(function* () {
  const chat = yield* Chat.empty

  // Send a message and get response
  const response = yield* chat.generateText({
    prompt: "Hello! What can you help me with?"
  })

  console.log(response.content)

  return response
})
```

**Example**

```ts
import { Chat, LanguageModel } from "@effect/ai"
import { Effect, Stream } from "effect"

// Streaming chat with tool support
const streamingChat = Effect.gen(function* () {
  const chat = yield* Chat.empty

  yield* chat.streamText({
    prompt: "Generate a creative story"
  }).pipe(Stream.runForEach((part) =>
    Effect.sync(() => console.log(part))
  ))
})
```

**Signature**

```ts
export * as Chat from "./Chat.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L122)

Since v1.0.0