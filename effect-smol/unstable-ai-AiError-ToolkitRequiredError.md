Package: `effect`<br />
Module: `AiError`<br />

## AiError.ToolkitRequiredError

Error indicating an operation requires a toolkit but none was provided.

This error occurs when tool approval responses are present in the prompt
but no toolkit was provided to resolve them.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.ToolkitRequiredError({
  pendingApprovals: ["GetWeather", "SendEmail"]
})

console.log(error.isRetryable) // false
console.log(error.message)
// "Toolkit required to resolve pending tool approvals: GetWeather, SendEmail"
```

**Signature**

```ts
declare class ToolkitRequiredError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1197)

Since v1.0.0