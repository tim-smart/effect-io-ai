Package: `effect`<br />
Module: `Effect`<br />

## Effect.when

Conditionally executes an effect based on a boolean condition.

**Details**

This function allows you to run an effect only if a given condition evaluates
to `true`. If the condition is `true`, the effect is executed, and its result
is wrapped in an `Option.some`. If the condition is `false`, the effect is
skipped, and the result is `Option.none`.

**When to Use**

This function is useful for scenarios where you need to dynamically decide
whether to execute an effect based on runtime logic, while also representing
the skipped case explicitly.

**Example** (Conditional Effect Execution)

```ts
import { Effect, Option } from "effect"

const validateWeightOption = (
  weight: number
): Effect.Effect<Option.Option<number>> =>
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

**See**

- `whenEffect` for a version that allows the condition to be an effect.
- `unless` for a version that executes the effect when the condition is `false`.

**Signature**

```ts
declare const when: { (condition: LazyArg<boolean>): <A, E, R>(self: Effect<A, E, R>) => Effect<Option.Option<A>, E, R>; <A, E, R>(self: Effect<A, E, R>, condition: LazyArg<boolean>): Effect<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8691)

Since v2.0.0