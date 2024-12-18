# once

Returns an effect that executes only once, regardless of how many times it's
called.

**Details**

This function ensures that a specific effect is executed only a single time,
no matter how many times it is invoked. The result of the effect will be
cached, and subsequent calls to the effect will immediately return the cached
result without re-executing the original logic.

**When to Use**

Use this function when you need to perform a task only once, regardless of
how many times the effect is triggered. It's particularly useful when you
have initialization tasks, logging, or other one-time actions that should not
be repeated. This can help optimize performance and avoid redundant actions.

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
export declare const once: <A, E, R>(self: Effect<A, E, R>) => Effect<Effect<void, E, R>>
```
