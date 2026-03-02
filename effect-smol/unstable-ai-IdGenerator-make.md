Package: `effect`<br />
Module: `IdGenerator`<br />

## IdGenerator.make

Creates a custom ID generator service with the specified options.

Validates the configuration to ensure the separator is not part of the
alphabet, which would cause ambiguity in parsing generated IDs.

**Example**

```ts
import { Effect } from "effect"
import { IdGenerator } from "effect/unstable/ai"

const program = Effect.gen(function*() {
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
import { Effect } from "effect"
import { IdGenerator } from "effect/unstable/ai"

// This will fail with IllegalArgumentError
const invalidConfig = IdGenerator.make({
  alphabet: "ABC123",
  prefix: "test",
  separator: "A", // Error: separator is part of alphabet
  size: 8
})

const program = Effect.gen(function*() {
  const generator = yield* invalidConfig
  return generator
}).pipe(
  Effect.catch((error) =>
    Effect.succeed(`Configuration error: ${error.message}`)
  )
)
```

**Signature**

```ts
declare const make: (args_0: MakeOptions) => Effect.Effect<{ readonly generateId: () => Effect.Effect<string, never, never>; }, Cause.IllegalArgumentError, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/IdGenerator.ts#L263)

Since v4.0.0