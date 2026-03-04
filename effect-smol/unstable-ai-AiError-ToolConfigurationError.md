Package: `effect`<br />
Module: `AiError`<br />

## AiError.ToolConfigurationError

Error indicating a provider-defined tool was configured with invalid arguments.

This error is not retryable because it indicates a programming error in the
tool configuration that must be fixed in code.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.ToolConfigurationError({
  toolName: "OpenAiCodeInterpreter",
  description: "Invalid container ID format"
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Invalid configuration for tool 'OpenAiCodeInterpreter': Invalid container ID format"
```

**Signature**

```ts
declare class ToolConfigurationError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1149)

Since v1.0.0