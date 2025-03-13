Package: `effect`<br />
Module: `Effect`<br />

## Effect.race

Races two effects and returns the result of the first successful one.

**Details**

This function takes two effects and runs them concurrently. The first effect
that successfully completes will determine the result of the race, and the
other effect will be interrupted.

If neither effect succeeds, the function will fail with a `Cause`
containing all the errors.

**When to Use**

This is useful when you want to run two effects concurrently, but only care
about the first one to succeed. It is commonly used in cases like timeouts,
retries, or when you want to optimize for the faster response without
worrying about the other effect.

**Handling Success or Failure with Either**

If you want to handle the result of whichever task completes first, whether
it succeeds or fails, you can use the `Effect.either` function. This function
wraps the result in an `Either` type, allowing you to see if the result
was a success (`Right`) or a failure (`Left`).

**Example**

```ts
// Title: Both Tasks Succeed
import { Effect, Console } from "effect"

const task1 = Effect.succeed("task1").pipe(
  Effect.delay("200 millis"),
  Effect.tap(Console.log("task1 done")),
  Effect.onInterrupt(() => Console.log("task1 interrupted"))
)
const task2 = Effect.succeed("task2").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Console.log("task2 done")),
  Effect.onInterrupt(() => Console.log("task2 interrupted"))
)

const program = Effect.race(task1, task2)

// Effect.runFork(program)
// Output:
// task1 done
// task2 interrupted
```

**Example**

```ts
// Title: One Task Fails, One Succeeds
import { Effect, Console } from "effect"

const task1 = Effect.fail("task1").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Console.log("task1 done")),
  Effect.onInterrupt(() => Console.log("task1 interrupted"))
)
const task2 = Effect.succeed("task2").pipe(
  Effect.delay("200 millis"),
  Effect.tap(Console.log("task2 done")),
  Effect.onInterrupt(() => Console.log("task2 interrupted"))
)

const program = Effect.race(task1, task2)

// Effect.runFork(program)
// Output:
// task2 done
```

**Example**

```ts
// Title: Both Tasks Fail
import { Effect, Console } from "effect"

const task1 = Effect.fail("task1").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Console.log("task1 done")),
  Effect.onInterrupt(() => Console.log("task1 interrupted"))
)
const task2 = Effect.fail("task2").pipe(
  Effect.delay("200 millis"),
  Effect.tap(Console.log("task2 done")),
  Effect.onInterrupt(() => Console.log("task2 interrupted"))
)

const program = Effect.race(task1, task2)

// Effect.runPromiseExit(program).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Parallel',
//     left: { _id: 'Cause', _tag: 'Fail', failure: 'task1' },
//     right: { _id: 'Cause', _tag: 'Fail', failure: 'task2' }
//   }
// }
```

**Example**

```ts
// Title: Handling Success or Failure with Either
import { Effect, Console } from "effect"

const task1 = Effect.fail("task1").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Console.log("task1 done")),
  Effect.onInterrupt(() => Console.log("task1 interrupted"))
)
const task2 = Effect.succeed("task2").pipe(
  Effect.delay("200 millis"),
  Effect.tap(Console.log("task2 done")),
  Effect.onInterrupt(() => Console.log("task2 interrupted"))
)

// Run both tasks concurrently, wrapping the result
// in Either to capture success or failure
const program = Effect.race(Effect.either(task1), Effect.either(task2))

// Effect.runPromise(program).then(console.log)
// Output:
// task2 interrupted
// { _id: 'Either', _tag: 'Left', left: 'task1' }
```

**See**

- `raceAll` for a version that handles multiple effects.
- `raceFirst` for a version that returns the result of the first effect to complete.

**Signature**

```ts
declare const race: { <A2, E2, R2>(that: Effect<A2, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, that: Effect<A2, E2, R2>): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8916)

Since v2.0.0