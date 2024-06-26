# once

Returns an effect that executes only once, regardless of how many times it's
called.

To import and use `once` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.once
```

**Example**

```ts
import { Effect, Console } from "effect"

const program = Effect.gen(function* () {
  const task1 = Console.log("task1")
  yield* Effect.repeatN(task1, 2)
  const task2 = yield* Effect.once(Console.log("task2"))
  yield* Effect.repeatN(task2, 2)
})

Effect.runFork(program)
// Output:
// task1
// task1
// task1
// task2
```

**Signature**

```ts
export declare const once: <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<void, E, R>, never, never>
```
