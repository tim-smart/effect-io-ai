Package: `effect`<br />
Module: `AiError`<br />

## AiError.ToolResultEncodingError

Error indicating the tool result cannot be encoded for sending back to the model.

**Details**

This error is not retryable because encoding failures indicate a bug in the
tool schema definitions.

**Example** (Creating a tool result encoding error)

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.ToolResultEncodingError({
  toolName: "GetWeather",
  toolResult: { temperature: 72n },
  description: "Cannot encode bigint values as JSON"
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Failed to encode result for tool 'GetWeather': Cannot encode bigint values as JSON"
```

**Signature**

```ts
declare class ToolResultEncodingError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1202)

Since v4.0.0