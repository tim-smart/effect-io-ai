Package: `effect`<br />
Module: `AiError`<br />

## AiError.ToolResultEncodingError

Error indicating the tool result cannot be encoded for sending back to the model.

This error is not retryable because encoding failures indicate a bug in the
tool schema definitions.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.ToolResultEncodingError({
  toolName: "GetWeather",
  toolResult: { circular: "ref" },
  description: "Cannot encode circular reference"
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Failed to encode result for tool 'GetWeather': Cannot encode circular reference"
```

**Signature**

```ts
declare class ToolResultEncodingError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1099)

Since v1.0.0