Package: `@effect/ai`<br />
Module: `IdGenerator`<br />

## IdGenerator.make

Creates a custom ID generator service with the specified options.

Validates the configuration to ensure the separator is not part of the
alphabet, which would cause ambiguity in parsing generated IDs.

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect } from "effect"

const program = Effect.gen(function* () {
  // Create a generator for AI assistant message IDs
  const messageIdGen = yield* IdGenerator.make({
    alphabet: "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    prefix: "msg",
    separator: "-",
    size: 10
  })

  const messageId = yield* messageIdGen.generateId()
  console.log(messageId) // "msg-A7X9K2M5P8"
  return messageId
})
```

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect } from "effect"

// This will fail with IllegalArgumentException
const invalidConfig = IdGenerator.make({
  alphabet: "ABC123",
  prefix: "test",
  separator: "A", // Error: separator is part of alphabet
  size: 8
})

const program = Effect.gen(function* () {
  const generator = yield* invalidConfig
  return generator
}).pipe(
  Effect.catchAll(error =>
    Effect.succeed(`Configuration error: ${error.message}`)
  )
)
```

**Signature**

```ts
declare const make: (args_0: MakeOptions) => Effect.Effect<{ readonly generateId: () => Effect.Effect<string, never, never>; }, Cause.IllegalArgumentException, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/IdGenerator.ts#L267)

Since v1.0.0