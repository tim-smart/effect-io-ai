Package: `effect`<br />
Module: `Effect`<br />

## Effect.whenEffect

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

**Example** (Using an Effect as a Condition)

```ts
import { Effect, Random } from "effect"

const randomIntOption = Random.nextInt.pipe(
  Effect.whenEffect(Random.nextBoolean)
)

console.log(Effect.runSync(randomIntOption))
// Example Output:
// { _id: 'Option', _tag: 'Some', value: 8609104974198840 }
```

**See**

- `when` for a version that allows the condition to be a boolean.
- `unlessEffect` for a version that executes the effect when the condition is `false`.

**Signature**

```ts
declare const whenEffect: { <E, R>(condition: Effect<boolean, E, R>): <A, E2, R2>(effect: Effect<A, E2, R2>) => Effect<Option.Option<A>, E | E2, R | R2>; <A, E2, R2, E, R>(self: Effect<A, E2, R2>, condition: Effect<boolean, E, R>): Effect<Option.Option<A>, E2 | E, R2 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L8737)

Since v2.0.0