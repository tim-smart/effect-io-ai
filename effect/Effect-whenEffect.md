# whenEffect

Executes an effect conditionally, based on the result of another effect.

Use `whenEffect` when the condition to determine whether to execute the effect
depends on the outcome of another effect that produces a boolean value.

If the condition effect evaluates to `true`, the specified effect is executed.
If it evaluates to `false`, no effect is executed.

The result of the effect is wrapped in an `Option<A>` to indicate whether the
effect was executed. If the condition is `true`, the result of the effect is
wrapped in a `Some`. If the condition is `false`, the result is `None`,
representing that the effect was skipped.

To import and use `whenEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.whenEffect
undefined

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
