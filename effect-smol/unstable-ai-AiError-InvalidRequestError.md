Package: `effect`<br />
Module: `AiError`<br />

## AiError.InvalidRequestError

Error indicating the request had invalid or malformed parameters.

Invalid request errors require fixing the request and are not retryable.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const invalidRequestError = new AiError.InvalidRequestError({
  parameter: "temperature",
  constraint: "must be between 0 and 2",
  description: "Temperature value 5 is out of range"
})

console.log(invalidRequestError.isRetryable) // false
console.log(invalidRequestError.message)
// "Invalid request: parameter 'temperature' must be between 0 and 2. Temperature value 5 is out of range"
```

**Signature**

```ts
declare class InvalidRequestError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L597)

Since v1.0.0