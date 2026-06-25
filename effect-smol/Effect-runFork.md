Package: `effect`<br />
Module: `Effect`<br />

## Effect.runFork

Runs an effect in the background, returning a fiber that can
be observed or interrupted.

**When to use**

Use when you need to start an effect in the background and receive a fiber.

**Example** (Running an effect in the background)

```ts
import { Console, Effect, Fiber, Schedule } from "effect"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8795)

Since v2.0.0