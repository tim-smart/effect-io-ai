Package: `effect`<br />
Module: `AiError`<br />

## AiError.InvalidOutputError

Error indicating failure to parse or validate LLM output.

Invalid output errors are retryable since LLM outputs are non-deterministic.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const parseError = new AiError.InvalidOutputError({
  description: "Expected a string but received a number"
})

console.log(parseError.isRetryable) // true
console.log(parseError.message)
// "Invalid output: Expected a string but received a number"
```

**Signature**

```ts
declare class InvalidOutputError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L700)

Since v1.0.0