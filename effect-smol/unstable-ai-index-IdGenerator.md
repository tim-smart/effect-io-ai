Package: `effect`<br />
Module: `index`<br />

## index.IdGenerator

Re-exports all named exports from the "./IdGenerator.ts" module as `IdGenerator`.

**Example**

```ts
import { Effect } from "effect"
import { IdGenerator } from "effect/unstable/ai"

// Using the default ID generator
const program = Effect.gen(function*() {
  const idGen = yield* IdGenerator.IdGenerator
  const toolCallId = yield* idGen.generateId()
  console.log(toolCallId) // "id_A7xK9mP2qR5tY8uV"
  return toolCallId
}).pipe(Effect.provideService(
  IdGenerator.IdGenerator,
  IdGenerator.defaultIdGenerator
))
```

**Example**

```ts
import { Effect } from "effect"
import { IdGenerator } from "effect/unstable/ai"

// Creating a custom ID generator for AI tool calls
const customLayer = IdGenerator.layer({
  alphabet: "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
  prefix: "tool_call",
  separator: "-",
  size: 12
})

const program = Effect.gen(function*() {
  const idGen = yield* IdGenerator.IdGenerator
  const id = yield* idGen.generateId()
  console.log(id) // "tool_call-A7XK9MP2QR5T"
  return id
}).pipe(Effect.provide(customLayer))
```

**Signature**

```ts
export * as IdGenerator from "./IdGenerator.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L221)

Since v4.0.0