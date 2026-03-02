Package: `effect`<br />
Module: `Console`<br />

## Console.log

Outputs a message to the console.

This is the most commonly used console method for general purpose logging.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Console.log("Hello, world!")
  yield* Console.log("User data:", { name: "John", age: 30 })
  yield* Console.log("Processing", 42, "items")
})
```

**Signature**

```ts
declare const log: (...args: ReadonlyArray<any>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L463)

Since v2.0.0