Package: `effect`<br />
Module: `index`<br />

## index.Chat

Re-exports all named exports from the "./Chat.ts" module as `Chat`.

**Example**

```ts
import { Effect } from "effect"
import { Chat } from "effect/unstable/ai"

// Create a new chat session
const program = Effect.gen(function*() {
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
import { Effect, Stream } from "effect"
import { Chat } from "effect/unstable/ai"

// Streaming chat with tool support
const streamingChat = Effect.gen(function*() {
  const chat = yield* Chat.empty

  yield* chat.streamText({
    prompt: "Generate a creative story"
  }).pipe(Stream.runForEach((part) => Effect.sync(() => console.log(part))))
})
```

**Signature**

```ts
export * as Chat from "./Chat.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L154)

Since v4.0.0