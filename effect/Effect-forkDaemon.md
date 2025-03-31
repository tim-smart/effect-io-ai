Package: `effect`<br />
Module: `Effect`<br />

## Effect.forkDaemon

Creates a long-running background fiber that is independent of its parent.

**Details**

This function creates a "daemon" fiber that runs in the background and is not
tied to the lifecycle of its parent fiber. Unlike normal fibers that stop
when the parent fiber terminates, a daemon fiber will continue running until
the global scope closes or the fiber completes naturally. This makes it
useful for tasks that need to run in the background independently, such as
periodic logging, monitoring, or background data processing.

**Example** (Creating a Daemon Fiber)

```ts
import { Effect, Console, Schedule } from "effect"

// Daemon fiber that logs a message repeatedly every second
const daemon = Effect.repeat(
  Console.log("daemon: still running!"),
  Schedule.fixed("1 second")
)

const parent = Effect.gen(function* () {
  console.log("parent: started!")
  // Daemon fiber running independently
  yield* Effect.forkDaemon(daemon)
  yield* Effect.sleep("3 seconds")
  console.log("parent: finished!")
})

Effect.runFork(parent)
// Output:
// parent: started!
// daemon: still running!
// daemon: still running!
// daemon: still running!
// parent: finished!
// daemon: still running!
// daemon: still running!
// daemon: still running!
// daemon: still running!
// daemon: still running!
// ...etc...
```

**Signature**

```ts
declare const forkDaemon: <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L6304)

Since v2.0.0