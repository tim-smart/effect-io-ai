Package: `effect`<br />
Module: `AiError`<br />

## AiError.ToolNotFoundError

Error indicating the model requested a tool that doesn't exist in the toolkit.

This error is retryable because the model may self-correct when provided
with the list of available tools.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.ToolNotFoundError({
  toolName: "unknownTool",
  availableTools: ["GetWeather", "GetTime"]
})

console.log(error.isRetryable) // true
console.log(error.message)
// "Tool 'unknownTool' not found. Available tools: GetWeather, GetTime"
```

**Signature**

```ts
declare class ToolNotFoundError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L947)

Since v1.0.0