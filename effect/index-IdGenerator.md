Package: `@effect/ai`<br />
Module: `index`<br />

## index.IdGenerator

Re-exports all named exports from the "./IdGenerator.js" module as `IdGenerator`.

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect, Layer } from "effect"

// Using the default ID generator
const program = Effect.gen(function* () {
  const idGen = yield* IdGenerator.IdGenerator
  const toolCallId = yield* idGen.generateId()
  console.log(toolCallId) // "id_A7xK9mP2qR5tY8uV"
  return toolCallId
}).pipe(
  Effect.provide(Layer.succeed(
    IdGenerator.IdGenerator,
    IdGenerator.defaultIdGenerator
  ))
)
```

**Example**

```ts
import { IdGenerator } from "@effect/ai"
import { Effect, Layer } from "effect"

// Creating a custom ID generator for AI tool calls
const customLayer = IdGenerator.layer({
  alphabet: "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
  prefix: "tool_call",
  separator: "-",
  size: 12
})

const program = Effect.gen(function* () {
  const idGen = yield* IdGenerator.IdGenerator
  const id = yield* idGen.generateId()
  console.log(id) // "tool_call-A7XK9MP2QR5T"
  return id
}).pipe(
  Effect.provide(customLayer)
)
```

**Signature**

```ts
export * as IdGenerator from "./IdGenerator.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L227)

Since v1.0.0