# parallelFinalizers

Ensures that finalizers are run concurrently when the scope of an effect is
closed.

**Details**

This function modifies the behavior of finalizers within a scoped workflow to
allow them to run concurrently when the scope is closed.

By default, finalizers are executed sequentially in reverse order of their
addition, but this function changes that behavior to execute all finalizers
concurrently.

**When to Use**

Running finalizers concurrently can improve performance when multiple
independent cleanup tasks need to be performed. However, it requires that
these tasks do not depend on the order of execution or introduce race
conditions.

To import and use `parallelFinalizers` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.parallelFinalizers
```

**Example**

```ts
import { Console, Effect } from "effect"

// Define a program that adds multiple finalizers
const program = Effect.gen(function* () {
  yield* Effect.addFinalizer(() => Console.log("Finalizer 1 executed").pipe(Effect.delay("300 millis")))
  yield* Effect.addFinalizer(() => Console.log("Finalizer 2 executed").pipe(Effect.delay("100 millis")))
  yield* Effect.addFinalizer(() => Console.log("Finalizer 3 executed").pipe(Effect.delay("200 millis")))
  return "some result"
})

// Modify the program to ensure finalizers run in parallel
const modified = program.pipe(Effect.parallelFinalizers)

const runnable = Effect.scoped(modified)

// Effect.runFork(runnable)
// Output:
// Finalizer 2 executed
// Finalizer 3 executed
// Finalizer 1 executed
```

**Signature**

```ts
export declare const parallelFinalizers: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, R>
```
