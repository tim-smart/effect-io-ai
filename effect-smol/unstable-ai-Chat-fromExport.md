Package: `effect`<br />
Module: `Chat`<br />

## Chat.fromExport

Creates a Chat service from previously exported chat data.

Restores a chat session from structured data that was previously exported
using the `export` method. Useful for persisting and restoring conversation
state.

**Example**

```ts
import { Effect } from "effect"
import { Chat } from "effect/unstable/ai"

declare const loadFromDatabase: (sessionId: string) => Effect.Effect<unknown>

const restoreChat = Effect.gen(function*() {
  // Assume we have previously exported data
  const savedData = yield* loadFromDatabase("chat-session-123")

  const restoredChat = yield* Chat.fromExport(savedData)

  // Continue the conversation from where it left off
  const response = yield* restoredChat.generateText({
    prompt: "Let's continue our discussion"
  })
}).pipe(
  Effect.catchTag("SchemaError", (error) => {
    console.log("Failed to restore chat:", error.message)
    return Effect.void
  })
)
```

**Signature**

```ts
declare const fromExport: (data: unknown) => Effect.Effect<Service, Schema.SchemaError, LanguageModel.LanguageModel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L535)

Since v4.0.0