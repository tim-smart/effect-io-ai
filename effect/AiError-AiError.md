Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.AiError

Union type representing all possible AI operation errors.

This type encompasses all error cases that can occur during AI operations,
providing a comprehensive error handling surface for applications.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect, Match } from "effect"

const handleAnyAiError = Match.type<AiError.AiError>().pipe(
  Match.tag("HttpRequestError", (err) =>
    `Network error: ${err.reason}`
  ),
  Match.tag("HttpResponseError", (err) =>
    `Server error: HTTP ${err.response.status}`
  ),
  Match.tag("MalformedInput", (err) =>
    `Invalid input: ${err.description || "Data validation failed"}`
  ),
  Match.tag("MalformedOutput", (err) =>
    `Invalid response: ${err.description || "Response parsing failed"}`
  ),
  Match.orElse((err) =>
    `Unknown error: ${err.message}`
  )
)
```

**Signature**

```ts
type AiError = | HttpRequestError
  | HttpResponseError
  | MalformedInput
  | MalformedOutput
  | UnknownError
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L709)

Since v1.0.0