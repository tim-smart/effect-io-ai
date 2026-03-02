Package: `effect`<br />
Module: `AiError`<br />

## AiError.NetworkError

Error indicating a network-level failure before receiving a response.

This error is raised when issues arise before receiving an HTTP response,
such as network connectivity problems, request encoding issues, or invalid
URLs.

**Example**

```ts
import { AiError } from "effect/unstable/ai"

const error = new AiError.NetworkError({
  reason: "TransportError",
  request: {
    method: "POST",
    url: "https://api.openai.com/v1/completions",
    urlParams: [],
    hash: undefined,
    headers: { "Content-Type": "application/json" }
  },
  description: "Connection timeout after 30 seconds"
})

console.log(error.isRetryable) // true
console.log(error.message)
// "Transport: Connection timeout after 30 seconds (POST https://api.openai.com/v1/completions)"
```

**Signature**

```ts
declare class NetworkError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L143)

Since v1.0.0