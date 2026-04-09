Package: `effect`<br />
Module: `AiError`<br />

## AiError.UnknownError

Catch-all error for unknown or unexpected errors.

Unknown errors are not retryable by default since the cause is unknown.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L894)

Since v1.0.0