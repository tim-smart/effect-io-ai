Package: `effect`<br />
Module: `AiError`<br />

## AiError.isAiError

Type guard to check if a value is an `AiError`.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const someError = new Error("generic error")
const aiError = AiError.make({
  module: "Test",
  method: "example",
  reason: new AiError.RateLimitError({})
})

console.log(AiError.isAiError(someError)) // false
console.log(AiError.isAiError(aiError)) // true
```

**Signature**

```ts
declare const isAiError: (u: unknown) => u is AiError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1458)

Since v1.0.0