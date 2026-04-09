Package: `effect`<br />
Module: `AiError`<br />

## AiError.AiError

Top-level AI error wrapper using the `reason` pattern.

This error wraps semantic error reasons and provides:
- `module` and `method` context for where the error occurred
- `reason` field containing the semantic error type
- Delegated `isRetryable` and `retryAfter` to the underlying reason

Use with `Effect.catchReason` for ergonomic error handling:

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1392)

Since v1.0.0