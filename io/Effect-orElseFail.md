# orElseFail

Executes this effect and returns its value, if it succeeds, but otherwise
fails with the specified error.

To import and use `orElseFail` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.orElseFail
```

**Signature**

```ts
export declare const orElseFail: {
  <E2>(evaluate: LazyArg<E2>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E2, A>
  <R, E, A, E2>(self: Effect<R, E, A>, evaluate: LazyArg<E2>): Effect<R, E2, A>
}
```
