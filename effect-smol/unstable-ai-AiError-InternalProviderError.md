Package: `effect`<br />
Module: `AiError`<br />

## AiError.InternalProviderError

Error indicating the AI provider experienced an internal error.

**Details**

Internal provider errors are typically transient and are retryable.

**Example** (Creating an internal provider error)

```ts
import { AiError } from "effect/unstable/ai"

const providerError = new AiError.InternalProviderError({
  description: "Server encountered an unexpected error"
})

console.log(providerError.isRetryable) // true
console.log(providerError.message)
// "Internal provider error: Server encountered an unexpected error"
```

**Signature**

```ts
declare class InternalProviderError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L714)

Since v4.0.0