Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.isAiError

Type guard to check if a value is an AI error.

**Example**

```ts
import { AiError } from "@effect/ai"

const someError = new Error("generic error")
const aiError = new AiError.UnknownError({
  module: "Test",
  method: "example"
})

console.log(AiError.isAiError(someError)) // false
console.log(AiError.isAiError(aiError))   // true
```

**Signature**

```ts
declare const isAiError: (u: unknown) => u is AiError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L116)

Since v1.0.0