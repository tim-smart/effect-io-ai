# runFork

Executes an effect and returns a `RuntimeFiber` that represents the running computation.

Use `runFork` when you want to start an effect without blocking the current execution flow.
It returns a fiber that you can observe, interrupt, or join as needed.

To import and use `runFork` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.runFork
```

**Example**

```ts
import { Effect, Console, Schedule, Fiber } from "effect"

// Define an effect that repeats a message every 200 milliseconds
const program = Effect.repeat(Console.log("running..."), Schedule.spaced("200 millis"))

// Start the effect without blocking
const fiber = Effect.runFork(program)

// Interrupt the fiber after 500 milliseconds
setTimeout(() => {
  Effect.runFork(Fiber.interrupt(fiber))
}, 500)
```

**Signature**

```ts
export declare const runFork: <A, E>(effect: Effect<A, E>, options?: Runtime.RunForkOptions) => Fiber.RuntimeFiber<A, E>
```
