# orElseSucceed

Ensures the effect always succeeds by replacing failures with a default
success value.

**Details**

This function transforms an effect that may fail into one that cannot fail by
replacing any failure with a provided success value. If the original effect
fails, the failure is "swallowed," and the specified success value is
returned instead. If the original effect succeeds, its value remains
unchanged.

**When to Use**

This is especially useful for providing default values in case of failure,
ensuring that an effect always completes successfully. By using this
function, you can avoid the need for complex error handling and guarantee a
fallback result.

To import and use `orElseSucceed` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.orElseSucceed
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

const program = Effect.orElseSucceed(validate(-1), () => 18)

console.log(Effect.runSyncExit(program))
// Output:
// { _id: 'Exit', _tag: 'Success', value: 18 }
```

**Signature**

```ts
export declare const orElseSucceed: {
  <A2>(evaluate: LazyArg<A2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, never, R>
  <A, E, R, A2>(self: Effect<A, E, R>, evaluate: LazyArg<A2>): Effect<A | A2, never, R>
}
```
