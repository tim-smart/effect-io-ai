Package: `effect`<br />
Module: `AiError`<br />

## AiError.ToolParameterValidationError

Error indicating the model's tool call parameters failed schema validation.

**Details**

This error is retryable because the model may correct its parameters
on subsequent attempts.

**Example** (Creating a tool parameter validation error)

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.ToolParameterValidationError({
  toolName: "GetWeather",
  toolParams: { location: 123 },
  description: "Expected string, got number"
})

console.log(error.isRetryable) // true
console.log(error.message)
// "Invalid parameters for tool 'GetWeather': Expected string, got number"
```

**Signature**

```ts
declare class ToolParameterValidationError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AiError.ts#L1027)

Since v4.0.0