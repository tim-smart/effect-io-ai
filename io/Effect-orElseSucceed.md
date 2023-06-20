# orElseSucceed

Executes this effect and returns its value, if it succeeds, but
otherwise succeeds with the specified value.

To import and use `orElseSucceed` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.orElseSucceed
```

**Signature**

```ts
export declare const orElseSucceed: {
  <A2>(evaluate: LazyArg<A2>): <R, E, A>(self: Effect<R, E, A>) => Effect<R, E, A2 | A>
  <R, E, A, A2>(self: Effect<R, E, A>, evaluate: LazyArg<A2>): Effect<R, E, A | A2>
}
```
