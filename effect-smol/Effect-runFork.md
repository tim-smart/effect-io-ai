Package: `effect`<br />
Module: `Effect`<br />

## Effect.runFork

Runs an effect in the background, returning a fiber that can
be observed or interrupted.

**When to use**

Use when an effect should start in the background and return a fiber that can
be observed or interrupted. Prefer this when you do not need a `Promise` or
synchronous result.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8766)

Since v2.0.0