Package: `effect`<br />
Module: `Console`<br />

## Console.log

Logs a general-purpose message to the console.

**Example** (Writing log messages)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L470)

Since v2.0.0