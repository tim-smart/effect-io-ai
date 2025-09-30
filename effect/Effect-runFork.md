Package: `effect`<br />
Module: `Effect`<br />

## Effect.runFork

Runs an effect in the background, returning a fiber that can be observed or
interrupted.

Unless you specifically need a `Promise` or synchronous operation, `runFork`
is a good default choice.

**Details**

This function is the foundational way to execute an effect in the background.
It creates a "fiber," a lightweight, cooperative thread of execution that can
be observed (to access its result), interrupted, or joined. Fibers are useful
for concurrent programming and allow effects to run independently of the main
program flow.

Once the effect is running in a fiber, you can monitor its progress, cancel
it if necessary, or retrieve its result when it completes. If the effect
fails, the fiber will propagate the failure, which you can observe and
handle.

**When to Use**

Use this function when you need to run an effect in the background,
especially if the effect is long-running or performs periodic tasks. It's
suitable for tasks that need to run independently but might still need
observation or management, like logging, monitoring, or scheduled tasks.

This function is ideal if you don't need the result immediately or if the
effect is part of a larger concurrent workflow.

**Example** (Running an Effect in the Background)

```ts
import { Effect, Console, Schedule, Fiber } from "effect"

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.repeat(
  Console.log("running..."),
  Schedule.spaced("200 millis")
)

//      ┌─── RuntimeFiber<number, never>
//      ▼
const fiber = Effect.runFork(program)

setTimeout(() => {
  Effect.runFork(Fiber.interrupt(fiber))
}, 500)
```

**Signature**

```ts
declare const runFork: <A, E>(effect: Effect<A, E>, options?: Runtime.RunForkOptions) => Fiber.RuntimeFiber<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12064)

Since v2.0.0