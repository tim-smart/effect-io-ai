Package: `effect`<br />
Module: `AiError`<br />

## AiError.StructuredOutputError

Error indicating the LLM generated text that does not conform to the
requested structured output schema.

**Details**

Structured output errors are retryable since LLM outputs are non-deterministic.

**Example** (Creating a structured output error)

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.StructuredOutputError({
  description: "Expected a valid JSON object",
  responseText: "{\"foo\":}"
})

console.log(error.isRetryable) // true
console.log(error.message)
// "Structured output validation failed: Expected a valid JSON object"
```

**Signature**

```ts
declare class StructuredOutputError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L844)

Since v4.0.0