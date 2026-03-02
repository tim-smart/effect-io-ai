Package: `effect`<br />
Module: `AiError`<br />

## AiError.InvalidToolResultError

Error indicating the tool handler returned an invalid result that does not
match the tool's schema.

This error is not retryable because invalid results indicate a bug in the
tool handler implementation.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.InvalidToolResultError({
  toolName: "GetWeather",
  description: "Tool handler returned invalid result: missing 'temperature' field"
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Tool 'GetWeather' returned invalid result: missing 'temperature' field"
```

**Signature**

```ts
declare class InvalidToolResultError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1045)

Since v1.0.0