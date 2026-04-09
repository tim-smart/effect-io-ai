Package: `effect`<br />
Module: `AiError`<br />

## AiError.QuotaExhaustedError

Error indicating account or billing limits have been reached.

Quota exhausted errors are not retryable without user action.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L443)

Since v1.0.0