Package: `effect`<br />
Module: `AiError`<br />

## AiError.StructuredOutputError

Error indicating the LLM generated text that does not conform to the
requested structured output schema.

Structured output errors are retryable since LLM outputs are non-deterministic.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.StructuredOutputError({
  description: "Expected a valid JSON object"
})

console.log(error.isRetryable) // true
console.log(error.message)
// "Structured output validation failed: Expected a valid JSON object"
```

**Signature**

```ts
declare class StructuredOutputError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L770)

Since v1.0.0