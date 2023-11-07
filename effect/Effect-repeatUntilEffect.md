# repeatUntilEffect

Repeats this effect until its value satisfies the specified effectful
predicate or until the first failure.

To import and use `repeatUntilEffect` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.repeatUntilEffect
```

**Signature**

```ts
export declare const repeatUntilEffect: {
  <A, R2, E2>(f: (a: A) => Effect<R2, E2, boolean>): <R, E>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(self: Effect<R, E, A>, f: (a: A) => Effect<R2, E2, boolean>): Effect<R | R2, E | E2, A>
}
```
