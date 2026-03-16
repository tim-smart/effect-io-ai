Package: `effect`<br />
Module: `Effect`<br />

## Effect.onExit

Ensures that a cleanup functions runs, whether this effect succeeds, fails,
or is interrupted.

**Example**

```ts
import { Console, Effect, Exit } from "effect"

const task = Effect.succeed(42)

const program = Effect.onExit(task, (exit) =>
  Console.log(
    Exit.isSuccess(exit)
      ? `Task succeeded with: ${exit.value}`
      : `Task failed: ${Exit.isFailure(exit) ? exit.cause : "interrupted"}`
  ))

Effect.runPromise(program).then(console.log)
// Output:
// Task succeeded with: 42
// 42
```

**Signature**

```ts
declare const onExit: { <A, E, XE = never, XR = never>(f: (exit: Exit.Exit<A, E>) => Effect<void, XE, XR>): <R>(self: Effect<A, E, R>) => Effect<A, E | XE, R | XR>; <A, E, R, XE = never, XR = never>(self: Effect<A, E, R>, f: (exit: Exit.Exit<A, E>) => Effect<void, XE, XR>): Effect<A, E | XE, R | XR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6542)

Since v2.0.0