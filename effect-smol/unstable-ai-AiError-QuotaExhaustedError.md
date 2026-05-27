Package: `effect`<br />
Module: `AiError`<br />

## AiError.QuotaExhaustedError

Error indicating account or billing limits have been reached.

**Details**

Quota exhausted errors are not retryable without user action.

**Example** (Creating a quota exhausted error)

```ts
import { AiError } from "effect/unstable/ai"

const quotaError = new AiError.QuotaExhaustedError({})

console.log(quotaError.isRetryable) // false
console.log(quotaError.message)
// "Quota exhausted. Check your account billing and usage limits."
```

**Signature**

```ts
declare class QuotaExhaustedError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L485)

Since v4.0.0