Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.HttpResponseError

Error that occurs during HTTP response processing.

This error is thrown when issues arise after receiving an HTTP response,
such as unexpected status codes, response decoding failures, or empty
response bodies.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Option } from "effect"

const responseError = new AiError.HttpResponseError({
  module: "OpenAI",
  method: "createCompletion",
  reason: "StatusCode",
  request: {
    method: "POST",
    url: "https://api.openai.com/v1/completions",
    urlParams: [],
    hash: Option.none(),
    headers: { "Authorization": "Bearer sk-..." }
  },
  response: {
    status: 429,
    headers: { "X-RateLimit-Remaining": "0" }
  },
  description: "Rate limit exceeded"
})

console.log(responseError.message)
// "StatusCode: Rate limit exceeded (429 POST https://api.openai.com/v1/completions)"
```

**Signature**

```ts
declare class HttpResponseError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L352)

Since v1.0.0