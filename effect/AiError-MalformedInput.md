Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.MalformedInput

Error thrown when input data doesn't match the expected format or schema.

This error occurs when the data provided to an AI operation fails validation,
is missing required fields, or doesn't conform to the expected structure.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Effect } from "effect"

const validateInput = (data: unknown) =>
  typeof data === "string" && data.length > 0
    ? Effect.succeed(data)
    : Effect.fail(new AiError.MalformedInput({
        module: "ChatBot",
        method: "processMessage",
        description: "Input must be a non-empty string"
      }))

const program = validateInput("").pipe(
  Effect.catchTag("MalformedInput", (error) => {
    console.log(`Input validation failed: ${error.description}`)
    return Effect.succeed("Please provide a valid message")
  })
)
```

**Signature**

```ts
declare class MalformedInput
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L480)

Since v1.0.0