Package: `effect`<br />
Module: `AiError`<br />

## AiError.RateLimitError

Error indicating the request was rate limited.

Rate limit errors are always retryable. When `retryAfter` is provided,
callers should wait that duration before retrying.

**Example**

```ts
import { Duration } from "effect"
import { AiError } from "effect/unstable/ai"

const rateLimitError = new AiError.RateLimitError({
  retryAfter: Duration.seconds(60)
})

console.log(rateLimitError.isRetryable) // true
console.log(rateLimitError.message) // "Rate limit exceeded. Retry after 1 minute"
```

**Signature**

```ts
declare class RateLimitError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L394)

Since v1.0.0