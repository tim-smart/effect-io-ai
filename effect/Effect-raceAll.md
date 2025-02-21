# raceAll

Races multiple effects and returns the first successful result.

**Details**

This function runs multiple effects concurrently and returns the result of
the first one to succeed. If one effect succeeds, the others will be
interrupted.

If none of the effects succeed, the function will fail with the last error
encountered.

**When to Use**

This is useful when you want to race multiple effects, but only care about
the first one to succeed. It is commonly used in cases like timeouts,
retries, or when you want to optimize for the faster response without
worrying about the other effects.

To import and use `raceAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.raceAll
```

**Example**

```ts
// Title: All Tasks Succeed
import { Effect, Console } from "effect"

const task1 = Effect.succeed("task1").pipe(
  Effect.delay("100 millis"),
  Effect.tap(Console.log("task1 done")),
  Effect.onInterrupt(() => Console.log("task1 interrupted"))
)
const task2 = Effect.succeed("task2").pipe(
  Effect.delay("200 millis"),
  Effect.tap(Console.log("task2 done")),
  Effect.onInterrupt(() => Console.log("task2 interrupted"))
)

const task3 = Effect.succeed("task3").pipe(
  Effect.delay("150 millis"),
  Effect.tap(Console.log("task3 done")),
  Effect.onInterrupt(() => Console.log("task3 interrupted"))
)

const program = Effect.raceAll([task1, task2, task3])

// Effect.runFork(program)
// Output:
// task1 done
// task2 interrupted
// task3 interrupted
```

**Example**

```ts
// Title: One Task Fails, Two Tasks Succeed
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

const task3 = Effect.succeed("task3").pipe(
  Effect.delay("150 millis"),
  Effect.tap(Console.log("task3 done")),
  Effect.onInterrupt(() => Console.log("task3 interrupted"))
)

const program = Effect.raceAll([task1, task2, task3])

// Effect.runFork(program)
// Output:
// task3 done
// task2 interrupted
```

**Example**

```ts
// Title: All Tasks Fail
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

const task3 = Effect.fail("task3").pipe(
  Effect.delay("150 millis"),
  Effect.tap(Console.log("task3 done")),
  Effect.onInterrupt(() => Console.log("task3 interrupted"))
)

const program = Effect.raceAll([task1, task2, task3])

// Effect.runPromiseExit(program).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'task2' }
// }
```

**Signature**

```ts
export declare const raceAll: <Eff extends Effect<any, any, any>>(
  all: Iterable<Eff>
) => Effect<Effect.Success<Eff>, Effect.Error<Eff>, Effect.Context<Eff>>
```
