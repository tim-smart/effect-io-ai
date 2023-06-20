# repeatWhileEffect

Repeats this effect while its value satisfies the specified effectful
predicate or until the first failure.

To import and use `repeatWhileEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.repeatWhileEffect
```

**Signature**

```ts
export declare const repeatWhileEffect: {
  <R1, A>(f: (a: A) => Effect<R1, never, boolean>): <R, E>(self: Effect<R, E, A>) => Effect<R1 | R, E, A>
  <R, E, R1, A>(self: Effect<R, E, A>, f: (a: A) => Effect<R1, never, boolean>): Effect<R | R1, E, A>
}
```
