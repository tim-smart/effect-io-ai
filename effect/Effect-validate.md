# validate

The `validate` function allows you to combine multiple effects,
continuing the combination even if some of the effects fail. It accumulates
both successes and failures, allowing you to proceed through all effects
regardless of individual failures.

This function is similar to {@link zip}, but with `validate`, errors
do not stop the execution of subsequent effects. Instead, errors are
accumulated in a `Cause` and reported in the final result. This is useful
when you want to collect all results, including failures, instead of stopping
at the first error.

To import and use `validate` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.validate
undefined

**Example**

```ts
import { Effect, Console } from "effect"

const task1 = Console.log("task1").pipe(Effect.as(1))
const task2 = Effect.fail("Oh uh!").pipe(Effect.as(2))
const task3 = Console.log("task2").pipe(Effect.as(3))
const task4 = Effect.fail("Oh no!").pipe(Effect.as(4))

const program = task1.pipe(Effect.validate(task2), Effect.validate(task3), Effect.validate(task4))

Effect.runPromiseExit(program).then(console.log)
// Output:
// task1
// task2
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Sequential',
//     left: { _id: 'Cause', _tag: 'Fail', failure: 'Oh uh!' },
//     right: { _id: 'Cause', _tag: 'Fail', failure: 'Oh no!' }
//   }
// }
```

**Signature**

```ts
export declare const validate: {
  <B, E1, R1>(
    that: Effect<B, E1, R1>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<[A, B], E1 | E, R1 | R>
  <A, E, R, B, E1, R1>(
    self: Effect<A, E, R>,
    that: Effect<B, E1, R1>,
    options?:
      | {
          readonly concurrent?: boolean | undefined
          readonly batching?: boolean | "inherit" | undefined
          readonly concurrentFinalizers?: boolean | undefined
        }
      | undefined
  ): Effect<[A, B], E | E1, R | R1>
}
```
