Package: `effect`<br />
Module: `Effect`<br />

## Effect.raceFirst

Races two effects and returns the result of the first one to complete.

**Details**

This function takes two effects and runs them concurrently, returning the
result of the first one that completes, regardless of whether it succeeds or
fails.

**When to Use**

This function is useful when you want to race two operations, and you want to
proceed with whichever one finishes first, regardless of whether it succeeds
or fails.

**Disconnecting Effects**

The `Effect.raceFirst` function safely interrupts the “loser” effect once the other completes, but it will not resume until the loser is cleanly terminated.

If you want a quicker return, you can disconnect the interrupt signal for both effects. Instead of calling:

```ts
Effect.raceFirst(task1, task2)
```

You can use:

```ts
Effect.raceFirst(Effect.disconnect(task1), Effect.disconnect(task2))
```

This allows both effects to complete independently while still terminating the losing effect in the background.

**Example** (Both Tasks Succeed)

```ts
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

const program = Effect.raceFirst(task1, task2).pipe(
  Effect.tap(Console.log("more work..."))
)

Effect.runPromiseExit(program).then(console.log)
// Output:
// task1 done
// task2 interrupted
// more work...
// { _id: 'Exit', _tag: 'Success', value: 'task1' }
```

**Example** (One Task Fails, One Succeeds)

```ts
import { Effect, Console } from "effect"

const task1 = Effect.fail("task1").pipe(
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

const program = Effect.raceFirst(task1, task2).pipe(
  Effect.tap(Console.log("more work..."))
)

Effect.runPromiseExit(program).then(console.log)
// Output:
// task2 interrupted
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'task1' }
// }
```

**Example** (Using Effect.disconnect for Quicker Return)

```ts
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

// Race the two tasks with disconnect to allow quicker return
const program = Effect.raceFirst(
  Effect.disconnect(task1),
  Effect.disconnect(task2)
).pipe(Effect.tap(Console.log("more work...")))

Effect.runPromiseExit(program).then(console.log)
// Output:
// task1 done
// more work...
// { _id: 'Exit', _tag: 'Success', value: 'task1' }
// task2 interrupted
```

**Signature**

```ts
declare const raceFirst: { <A2, E2, R2>(that: Effect<A2, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, that: Effect<A2, E2, R2>): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L9360)

Since v2.0.0