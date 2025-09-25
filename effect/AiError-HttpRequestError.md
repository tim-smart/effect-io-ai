Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.HttpRequestError

Error that occurs during HTTP request processing.

This error is raised when issues arise before receiving an HTTP response,
such as network connectivity problems, request encoding issues, or invalid
URLs.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect } from "effect"

const handleNetworkError = Effect.gen(function* () {
  const error = new AiError.HttpRequestError({
    module: "OpenAI",
    method: "createCompletion",
    reason: "Transport",
    request: {
      method: "POST",
      url: "https://api.openai.com/v1/completions",
      urlParams: [],
      hash: Option.none(),
      headers: { "Content-Type": "application/json" }
    },
    description: "Connection timeout after 30 seconds"
  })

  console.log(error.message)
  // "Transport: Connection timeout after 30 seconds (POST https://api.openai.com/v1/completions)"
})
```

**Signature**

```ts
declare class HttpRequestError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L193)

Since v1.0.0