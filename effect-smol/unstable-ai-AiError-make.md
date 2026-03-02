Package: `effect`<br />
Module: `AiError`<br />

## AiError.make

Creates an `AiError` with the given reason.

**Example**

```ts
import { Duration } from "effect"
import { AiError } from "effect/unstable/ai"

const error = AiError.make({
  module: "OpenAI",
  method: "completion",
  reason: new AiError.RateLimitError({
    retryAfter: Duration.seconds(60)
  })
})

console.log(error.message)
// "OpenAI.completion: Rate limit exceeded. Retry after 1 minute"
```

**Signature**

```ts
declare const make: (params: { readonly module: string; readonly method: string; readonly reason: AiErrorReason; }) => AiError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1502)

Since v1.0.0