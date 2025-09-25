Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.UnknownError

Catch-all error for unexpected runtime errors in AI operations.

This error is used when an unexpected exception occurs that doesn't fit
into the other specific error categories. It provides context about where
the error occurred and preserves the original cause for debugging.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect } from "effect"

const riskyOperation = () => {
  try {
    // Some operation that might throw
    throw new Error("Unexpected network issue")
  } catch (cause) {
    return Effect.fail(new AiError.UnknownError({
      module: "ChatService",
      method: "sendMessage",
      description: "An unexpected error occurred during message processing",
      cause
    }))
  }
}

const program = riskyOperation().pipe(
  Effect.catchTag("UnknownError", (error) => {
    console.log(error.message)
    // "ChatService.sendMessage: An unexpected error occurred during message processing"
    return Effect.succeed("Service temporarily unavailable")
  })
)
```

**Signature**

```ts
declare class UnknownError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L648)

Since v1.0.0