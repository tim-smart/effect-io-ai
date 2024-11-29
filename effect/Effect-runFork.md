# runFork

The foundational function for running effects, returning a "fiber" that can
be observed or interrupted.

**When to Use**

`runFork` is used to run an effect in the background by creating a
fiber. It is the base function for all other run functions. It starts a fiber
that can be observed or interrupted.

Unless you specifically need a `Promise` or synchronous operation,
`runFork` is a good default choice.

To import and use `runFork` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.runFork
undefined

**Example**

```ts
// Title: Running an Effect in the Background
import { Effect, Console, Schedule, Fiber } from "effect"

//      ┌─── Effect<number, never, never>
//      ▼
const program = Effect.repeat(Console.log("running..."), Schedule.spaced("200 millis"))

//      ┌─── RuntimeFiber<number, never>
//      ▼
const fiber = Effect.runFork(program)

setTimeout(() => {
  Effect.runFork(Fiber.interrupt(fiber))
}, 500)
```

**Signature**

```ts
export declare const runFork: <A, E>(effect: Effect<A, E>, options?: Runtime.RunForkOptions) => Fiber.RuntimeFiber<A, E>
```
