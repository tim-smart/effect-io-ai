Package: `effect`<br />
Module: `index`<br />

## index.Effect

Re-exports all named exports from the "./Effect.ts" module as `Effect`.

**Example**

```ts
import { Console, Effect } from "effect"

// Creating a simple effect
const hello = Effect.succeed("Hello, World!")

// Composing effects
const program = Effect.gen(function*() {
  const message = yield* hello
  yield* Console.log(message)
  return message.length
})

// Running the effect
Effect.runPromise(program).then(console.log) // 13
```

**Example**

```ts
import { Effect } from "effect"

// Effect that may fail
const divide = (a: number, b: number) =>
  b === 0
    ? Effect.fail(new Error("Division by zero"))
    : Effect.succeed(a / b)

// Error handling
const program = Effect.gen(function*() {
  const result = yield* divide(10, 2)
  console.log("Result:", result) // Result: 5
  return result
})

// Handle errors
const safeProgram = program.pipe(
  Effect.match({
    onFailure: (error) => -1,
    onSuccess: (value) => value
  })
)
```

**Signature**

```ts
export * as Effect from "./Effect.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L985)

Since v2.0.0