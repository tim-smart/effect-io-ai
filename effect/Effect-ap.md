# ap

Applies the function produced by one effect to the value produced by another effect.

**Details**

This function combines two effects:

- The first effect produces a function of type `(a: A) => B`.
- The second effect produces a value of type `A`.

Once both effects complete successfully, the function is applied to the value, resulting in an effect that produces a value of type `B`.

To import and use `ap` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.ap
```

**Signature**

```ts
export declare const ap: {
  <A, E2, R2>(that: Effect<A, E2, R2>): <B, R, E>(self: Effect<(a: A) => B, E, R>) => Effect<B, E | E2, R | R2>
  <A, B, E, R, E2, R2>(self: Effect<(a: A) => B, E, R>, that: Effect<A, E2, R2>): Effect<B, E | E2, R | R2>
}
```
