# forkScoped

Forks a fiber in a local scope, ensuring it outlives its parent.

**Details**

This function is used to create fibers that are tied to a local scope,
meaning they are not dependent on their parent fiber's lifecycle. Instead,
they will continue running until the scope they were created in is closed.
This is particularly useful when you need a fiber to run independently of the
parent fiber, but still want it to be terminated when the scope ends.

Fibers created with this function are isolated from the parent fiber’s
termination, so they can run for a longer period. This behavior is different
from fibers created with {@link fork}, which are terminated when the parent fiber
terminates. With `forkScoped`, the child fiber will keep running until the
local scope ends, regardless of the state of the parent fiber.

To import and use `forkScoped` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.forkScoped
```

**Example**

```ts
// Title: Forking a Fiber in a Local Scope
//
// In this example, the child fiber continues to run beyond the lifetime of the parent fiber.
// The child fiber is tied to the local scope and will be terminated only when the scope ends.
//

import { Effect, Console, Schedule } from "effect"

// Child fiber that logs a message repeatedly every second
const child = Effect.repeat(Console.log("child: still running!"), Schedule.fixed("1 second"))

//      ┌─── Effect<void, never, Scope>
//      ▼
const parent = Effect.gen(function* () {
  console.log("parent: started!")
  // Child fiber attached to local scope
  yield* Effect.forkScoped(child)
  yield* Effect.sleep("3 seconds")
  console.log("parent: finished!")
})

// Program runs within a local scope
const program = Effect.scoped(
  Effect.gen(function* () {
    console.log("Local scope started!")
    yield* Effect.fork(parent)
    // Scope lasts for 5 seconds
    yield* Effect.sleep("5 seconds")
    console.log("Leaving the local scope!")
  })
)

// Effect.runFork(program)
// Output:
// Local scope started!
// parent: started!
// child: still running!
// child: still running!
// child: still running!
// parent: finished!
// child: still running!
// child: still running!
// Leaving the local scope!
```

**Signature**

```ts
export declare const forkScoped: <A, E, R>(
  self: Effect<A, E, R>
) => Effect<Fiber.RuntimeFiber<A, E>, never, Scope.Scope | R>
```
