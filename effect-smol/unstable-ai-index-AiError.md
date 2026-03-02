Package: `effect`<br />
Module: `index`<br />

## index.AiError

Re-exports all named exports from the "./AiError.ts" module as `AiError`.

**Example**

```ts
import { Effect, Match } from "effect"
import type { AiError } from "effect/unstable/ai"

// Handle errors using Match on the reason
const handleAiError = Match.type<AiError.AiError>().pipe(
  Match.when(
    { reason: { _tag: "RateLimitError" } },
    (err) => Effect.logWarning(`Rate limited, retry after ${err.retryAfter}`)
  ),
  Match.when(
    { reason: { _tag: "AuthenticationError" } },
    (err) => Effect.logError(`Auth failed: ${err.reason.kind}`)
  ),
  Match.when(
    { reason: { isRetryable: true } },
    (err) => Effect.logWarning(`Transient error, retrying: ${err.message}`)
  ),
  Match.orElse((err) => Effect.logError(`Permanent error: ${err.message}`))
)
```

**Example**

```ts
import { Duration, Effect } from "effect"
import { AiError } from "effect/unstable/ai"

// Create an AiError with a reason
const error = AiError.make({
  module: "OpenAI",
  method: "completion",
  reason: new AiError.RateLimitError({
    retryAfter: Duration.seconds(60)
  })
})

console.log(error.isRetryable) // true
console.log(error.message) // "OpenAI.completion: Rate limit exceeded. Retry after 1 minute"
```

**Signature**

```ts
export * as AiError from "./AiError.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L87)

Since v1.0.0