Package: `effect`<br />
Module: `AiError`<br />

## AiError.UnsupportedSchemaError

Error indicating a codec transformer rejected a schema because it contains
unsupported constructs.

Unsupported schema errors are not retryable because they indicate a
programmer error where the schema is incompatible with the provider.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.UnsupportedSchemaError({
  description: "Unions are not supported in Anthropic structured output"
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Unsupported schema: Unions are not supported in Anthropic structured output"
```

**Signature**

```ts
declare class UnsupportedSchemaError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L846)

Since v1.0.0