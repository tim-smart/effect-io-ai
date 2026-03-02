Package: `effect`<br />
Module: `index`<br />

## index.Console

Re-exports all named exports from the "./Console.ts" module as `Console`.

**Example**

```ts
import { Console, Effect } from "effect"

// Basic logging
const program = Effect.gen(function*() {
  yield* Console.log("Hello, World!")
  yield* Console.error("Something went wrong")
  yield* Console.warn("This is a warning")
  yield* Console.info("Information message")
})
```

**Example**

```ts
import { Console, Effect } from "effect"

// Grouped logging with timing
const debugProgram = Console.withGroup(
  Effect.gen(function*() {
    yield* Console.log("Step 1: Loading...")
    yield* Effect.sleep("100 millis")

    yield* Console.log("Step 2: Processing...")
    yield* Effect.sleep("200 millis")
  }),
  { label: "Processing Data" }
)
```

**Example**

```ts
import { Console, Effect } from "effect"

// Data visualization and debugging
const dataProgram = Effect.gen(function*() {
  const users = [
    { id: 1, name: "Alice", age: 30 },
    { id: 2, name: "Bob", age: 25 }
  ]

  yield* Console.table(users)
  yield* Console.dir(users[0], { depth: 2 })
  yield* Console.assert(users.length > 0, "Users array should not be empty")
})
```

**Signature**

```ts
export * as Console from "./Console.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L738)

Since v2.0.0