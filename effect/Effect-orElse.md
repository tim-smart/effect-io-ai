# orElse

Executes this effect and returns its value, if it succeeds, but otherwise
executes the specified effect.

To import and use `orElse` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.orElse
```

**Signature**

```ts
export declare const orElse: {
  <R2, E2, A2>(that: LazyArg<Effect<R2, E2, A2>>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2, A2 | A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: LazyArg<Effect<R2, E2, A2>>): Effect<R | R2, E2, A | A2>
}
```
