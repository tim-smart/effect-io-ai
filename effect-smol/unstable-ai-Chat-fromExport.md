Package: `effect`<br />
Module: `Chat`<br />

## Chat.fromExport

Creates a Chat service from previously exported chat data.

**Details**

Restores a chat session from structured data that was previously exported
using the `export` method. Useful for persisting and restoring conversation
state.

**Example** (Restoring chat data)

```ts
import { Effect, Ref } from "effect"
import { Chat } from "effect/unstable/ai"

const restoreChat = Effect.gen(function*() {
  const originalChat = yield* Chat.fromPrompt([
    {
      role: "user",
      content: "Which library are we using?"
    },
    {
      role: "assistant",
      content: "The project uses Effect."
    }
  ])

  const exported = yield* originalChat.export
  const restoredChat = yield* Chat.fromExport(exported)
  const restoredHistory = yield* Ref.get(restoredChat.history)

  console.log(restoredHistory.content.map((message) => message.role))
  // ["user", "assistant"]

  const restoredResponse = restoredHistory.content[1]
  if (restoredResponse?.role === "assistant") {
    const restoredText = restoredResponse.content[0]
    if (restoredText?.type === "text") {
      console.log(restoredText.text)
      // "The project uses Effect."
    }
  }
})
```

**Signature**

```ts
declare const fromExport: (data: unknown) => Effect.Effect<Service, Schema.SchemaError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L602)

Since v4.0.0