Package: `@effect/ai`<br />
Module: `index`<br />

## index.AiError

Re-exports all named exports from the "./AiError.js" module as `AiError`.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect, Match } from "effect"

const handleAiError = Match.type<AiError.AiError>().pipe(
  Match.tag("HttpRequestError", (err) =>
    Effect.logError(`Request failed: ${err.message}`)
  ),
  Match.tag("HttpResponseError", (err) =>
    Effect.logError(`Response error (${err.response.status}): ${err.message}`)
  ),
  Match.tag("MalformedInput", (err) =>
    Effect.logError(`Invalid input: ${err.message}`)
  ),
  Match.tag("MalformedOutput", (err) =>
    Effect.logError(`Invalid output: ${err.message}`)
  ),
  Match.orElse((err) =>
    Effect.logError(`Unknown error: ${err.message}`)
  )
)
```

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect, Option } from "effect"

const aiOperation = Effect.gen(function* () {
  // Some AI operation that might fail
  return yield* new AiError.HttpRequestError({
    module: "OpenAI",
    method: "completion",
    reason: "Transport",
    request: {
      method: "POST",
      url: "https://api.openai.com/v1/completions",
      urlParams: [],
      hash: Option.none(),
      headers: { "Authorization": "Bearer ***" }
    }
  })
})

const program = aiOperation.pipe(
  Effect.catchTag("HttpRequestError", (error) => {
    console.log("Request failed:", error.message)
    return Effect.succeed("fallback response")
  })
)
```

**Signature**

```ts
export * as AiError from "./AiError.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L72)

Since v1.0.0