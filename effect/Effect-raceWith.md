Package: `effect`<br />
Module: `Effect`<br />

## Effect.raceWith

Races two effects and calls a finisher when the first one completes.

**Details**

This function runs two effects concurrently and calls a specified “finisher”
function once one of the effects completes, regardless of whether it succeeds
or fails.

The finisher functions for each effect allow you to handle the results of
each effect as soon as they complete.

The function takes two finisher callbacks, one for each effect, and allows
you to specify how to handle the result of the race.

**When to Use**

This function is useful when you need to react to the completion of either
effect without waiting for both to finish. It can be used whenever you want
to take action based on the first available result.

**Example**

```ts
// Title: Handling Results of Concurrent Tasks
import { Effect, Console } from "effect"

const task1 = Effect.succeed("task1").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Console.log("task1 done")),
  Effect.onInterrupt(() =>
    Console.log("task1 interrupted").pipe(Effect.delay("100 millis"))
  )
)
const task2 = Effect.succeed("task2").pipe(
  Effect.delay("200 millis"),
  Effect.tap(Console.log("task2 done")),
  Effect.onInterrupt(() =>
    Console.log("task2 interrupted").pipe(Effect.delay("100 millis"))
  )
)

const program = Effect.raceWith(task1, task2, {
  onSelfDone: (exit) => Console.log(`task1 exited with ${exit}`),
  onOtherDone: (exit) => Console.log(`task2 exited with ${exit}`)
})

// Effect.runFork(program)
// Output:
// task1 done
// task1 exited with {
//   "_id": "Exit",
//   "_tag": "Success",
//   "value": "task1"
// }
// task2 interrupted
```

**Signature**

```ts
declare const raceWith: { <A1, E1, R1, E, A, A2, E2, R2, A3, E3, R3>(other: Effect<A1, E1, R1>, options: { readonly onSelfDone: (exit: Exit.Exit<A, E>, fiber: Fiber.Fiber<A1, E1>) => Effect<A2, E2, R2>; readonly onOtherDone: (exit: Exit.Exit<A1, E1>, fiber: Fiber.Fiber<A, E>) => Effect<A3, E3, R3>; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R1 | R2 | R3 | R>; <A, E, R, A1, E1, R1, A2, E2, R2, A3, E3, R3>(self: Effect<A, E, R>, other: Effect<A1, E1, R1>, options: { readonly onSelfDone: (exit: Exit.Exit<A, E>, fiber: Fiber.Fiber<A1, E1>) => Effect<A2, E2, R2>; readonly onOtherDone: (exit: Exit.Exit<A1, E1>, fiber: Fiber.Fiber<A, E>) => Effect<A3, E3, R3>; }): Effect<A2 | A3, E2 | E3, R | R1 | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9244)

Since v2.0.0