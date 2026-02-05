Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.MalformedOutput

Error thrown when output data can't be parsed or validated.

This error occurs when AI service responses don't match the expected format,
contain invalid data structures, or fail schema validation during parsing.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect, Schema } from "effect"

const ResponseSchema = Schema.Struct({
  message: Schema.String,
  tokens: Schema.Number
})

const parseResponse = (data: unknown) =>
  Schema.decodeUnknown(ResponseSchema)(data).pipe(
    Effect.mapError(parseError =>
      new AiError.MalformedOutput({
        module: "OpenAI",
        method: "completion",
        description: "Response doesn't match expected schema",
        cause: parseError
      })
    )
  )

const program = parseResponse({ invalid: "data" }).pipe(
  Effect.catchTag("MalformedOutput", (error) => {
    console.log(`Parsing failed: ${error.description}`)
    return Effect.succeed({ message: "Error", tokens: 0 })
  })
)
```

**Signature**

```ts
declare class MalformedOutput
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L549)

Since v1.0.0