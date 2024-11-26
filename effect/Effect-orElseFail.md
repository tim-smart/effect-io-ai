# orElseFail

Replaces the original failure with a new failure value.

`orElseFail` allows you to replace the failure from one effect with a
custom failure value. If the effect fails, you can provide a new failure to
be returned instead of the original one.

**Important**: This function only applies to failed effects. If the effect
succeeds, it will remain unaffected.

To import and use `orElseFail` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.orElseFail
```

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

**Signature**

```ts
export declare const orElseFail: {
  <E2>(evaluate: LazyArg<E2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2, R>
  <A, E, R, E2>(self: Effect<A, E, R>, evaluate: LazyArg<E2>): Effect<A, E2, R>
}
```
