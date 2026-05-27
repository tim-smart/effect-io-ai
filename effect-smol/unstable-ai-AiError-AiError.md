Package: `effect`<br />
Module: `AiError`<br />

## AiError.AiError

Top-level AI error wrapper using the `reason` pattern.

**When to use**

Use with `Effect.catchReason` for ergonomic error handling.

**Details**

This error stores `module` and `method` context, the semantic `reason`, and
delegates `isRetryable` and `retryAfter` to the underlying reason.

**Example** (Handling an AI error by tag)

```ts
import { Effect } from "effect"
import { AiError } from "effect/unstable/ai"

declare const aiOperation: Effect.Effect<string, AiError.AiError>

// Handle specific reason types
const handled = aiOperation.pipe(
  Effect.catchTag("AiError", (error) => {
    if (error.reason._tag === "RateLimitError") {
      return Effect.succeed(`Retry after ${error.retryAfter}`)
    }
    return Effect.fail(error)
  })
)
```

**Signature**

```ts
declare class AiError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1524)

Since v4.0.0