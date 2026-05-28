Package: `effect`<br />
Module: `AiError`<br />

## AiError.UnknownError

Error data for unknown or unexpected AI failures.

**Details**

Unknown errors are not retryable by default since the cause is unknown.

**Example** (Creating an unknown error)

```ts
import { AiError } from "effect/unstable/ai"

const unknownError = new AiError.UnknownError({
  description: "An unexpected error occurred"
})

console.log(unknownError.isRetryable) // false
console.log(unknownError.message)
// "An unexpected error occurred"
```

**Signature**

```ts
declare class UnknownError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L981)

Since v4.0.0