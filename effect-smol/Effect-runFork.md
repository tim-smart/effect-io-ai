Package: `effect`<br />
Module: `Effect`<br />

## Effect.runFork

The foundational function for running effects, returning a "fiber" that can
be observed or interrupted.

**When to Use**

`runFork` is used to run an effect in the background by creating a
fiber. It is the base function for all other run functions. It starts a fiber
that can be observed or interrupted.

Unless you specifically need a `Promise` or synchronous operation,
`runFork` is a good default choice.

**Example**

```ts
// Title: Running an Effect in the Background
import { Effect } from "effect"
import { Schedule } from "effect"
import { Fiber } from "effect"
import { Console } from "effect"

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
declare const runFork: <A, E>(effect: Effect<A, E, never>, options?: RunOptions | undefined) => Fiber<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8408)

Since v2.0.0