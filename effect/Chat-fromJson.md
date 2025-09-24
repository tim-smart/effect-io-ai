Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.fromJson

Creates a Chat service from previously exported JSON chat data.

Restores a chat session from JSON string that was previously exported
using the `exportJson` method. This is the most convenient way to
persist and restore chat sessions to/from storage systems.

**Example**

```ts
import { Chat } from "@effect/ai"
import { Effect } from "effect"

const restoreFromJson = Effect.gen(function* () {
  // Load JSON from localStorage or file system
  const jsonData = localStorage.getItem("my-chat-backup")
  if (!jsonData) return yield* Chat.empty

  const restoredChat = yield* Chat.fromJson(jsonData)

  // Chat history is now restored
  const response = yield* restoredChat.generateText({
    prompt: "What were we talking about?"
  })

  return response
}).pipe(
  Effect.catchTag("ParseError", (error) => {
    console.log("Invalid JSON format:", error.message)
    return Chat.empty // Fallback to empty chat
  })
)
```

**Signature**

```ts
declare const fromJson: (data: string) => Effect.Effect<Service, ParseError, LanguageModel.LanguageModel>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L573)

Since v1.0.0