# repeatWhileEffect

Repeats this effect while its value satisfies the specified effectful
predicate or until the first failure.

To import and use `repeatWhileEffect` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.repeatWhileEffect
```

**Signature**

```ts
export declare const repeatWhileEffect: {
  <R1, A, E2>(f: (a: A) => Effect<R1, E2, boolean>): <R, E>(self: Effect<R, E, A>) => Effect<R1 | R, E2 | E, A>
  <R, E, R1, A, E2>(self: Effect<R, E, A>, f: (a: A) => Effect<R1, E2, boolean>): Effect<R | R1, E | E2, A>
}
```
