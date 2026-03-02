Package: `effect`<br />
Module: `AiError`<br />

## AiError.isAiErrorReason

Type guard to check if a value is an `AiErrorReason`.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const rateLimitError = new AiError.RateLimitError({})
const genericError = new Error("generic error")

console.log(AiError.isAiErrorReason(rateLimitError)) // true
console.log(AiError.isAiErrorReason(genericError)) // false
```

**Signature**

```ts
declare const isAiErrorReason: (u: unknown) => u is AiErrorReason
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1477)

Since v1.0.0