# when

Conditionally executes an effect based on a boolean condition.

`when` allows you to conditionally execute an effect, similar to using an `if
(condition)` expression, but with the added benefit of handling effects. If
the condition is `true`, the effect is executed; otherwise, it does nothing.

The result of the effect is wrapped in an `Option<A>` to indicate whether the
effect was executed. If the condition is `true`, the result of the effect is
wrapped in a `Some`. If the condition is `false`, the result is `None`,
representing that the effect was skipped.

To import and use `when` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.when
undefined

**Example**

```ts
// Title: Conditional Effect Execution
import { Effect, Option } from "effect"

const validateWeightOption = (weight: number): Effect.Effect<Option.Option<number>> =>
  // Conditionally execute the effect if the weight is non-negative
  Effect.succeed(weight).pipe(Effect.when(() => weight >= 0))

// Run with a valid weight
Effect.runPromise(validateWeightOption(100)).then(console.log)
// Output:
// {
//   _id: "Option",
//   _tag: "Some",
//   value: 100
// }

// Run with an invalid weight
Effect.runPromise(validateWeightOption(-5)).then(console.log)
// Output:
// {
//   _id: "Option",
//   _tag: "None"
// }
```

**Signature**

```ts
export declare const when: {
  (condition: LazyArg<boolean>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>
  <A, E, R>(self: Effect<A, E, R>, condition: LazyArg<boolean>): Effect<Option.Option<A>, E, R>
}
```
