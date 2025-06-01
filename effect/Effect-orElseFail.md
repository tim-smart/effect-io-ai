Package: `effect`<br />
Module: `Effect`<br />

## Effect.orElseFail

Replaces the failure of an effect with a custom failure value.

**Details**

This function allows you to handle the failure of an effect by replacing it
with a predefined failure value. If the effect fails, the new failure value
provided by the `evaluate` function will be returned instead of the original
failure. If the effect succeeds, the original success value is returned
unchanged.

**When to Use**

This is particularly useful when you want to standardize error handling or
provide a consistent failure value for specific operations. It simplifies
error management by ensuring that all failures are replaced with a controlled
alternative.

**Example**

```ts
import { Effect } from "effect"

const validate = (age: number): Effect.Effect<number, string> => {
  if (age < 0) {
    return Effect.fail("NegativeAgeError")
  } else if (age < 18) {
    return Effect.fail("IllegalAgeError")
  } else {
    return Effect.succeed(age)
  }
}

const program = Effect.orElseFail(validate(-1), () => "invalid age")

console.log(Effect.runSyncExit(program))
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'invalid age' }
// }
```

**See**

- `mapError` if you need to access the error to transform it.

**Signature**

```ts
declare const orElseFail: { <E2>(evaluate: LazyArg<E2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2, R>; <A, E, R, E2>(self: Effect<A, E, R>, evaluate: LazyArg<E2>): Effect<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11419)

Since v2.0.0