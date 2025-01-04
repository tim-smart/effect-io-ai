# whenEffect

Conditionally executes an effect based on the result of another effect.

**Details**

This function allows you to run an effect only if a conditional effect
evaluating to a boolean resolves to `true`. If the conditional effect
evaluates to `true`, the specified effect is executed, and its result is
wrapped in `Option.some`. If the conditional effect evaluates to `false`, the
effect is skipped, and the result is `Option.none`.

**When to Use**

This function is particularly useful when the decision to execute an effect
depends on the result of another effect, such as a random value, a
user-provided input, or a network request result.

To import and use `whenEffect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.whenEffect
```

**Example**

```ts
// Title: Using an Effect as a Condition
import { Effect, Random } from "effect"

const randomIntOption = Random.nextInt.pipe(Effect.whenEffect(Random.nextBoolean))

console.log(Effect.runSync(randomIntOption))
// Example Output:
// { _id: 'Option', _tag: 'Some', value: 8609104974198840 }
```

**Signature**

```ts
export declare const whenEffect: {
  <E, R>(
    condition: Effect<boolean, E, R>
  ): <A, E2, R2>(effect: Effect<A, E2, R2>) => Effect<Option.Option<A>, E | E2, R | R2>
  <A, E2, R2, E, R>(self: Effect<A, E2, R2>, condition: Effect<boolean, E, R>): Effect<Option.Option<A>, E2 | E, R2 | R>
}
```
