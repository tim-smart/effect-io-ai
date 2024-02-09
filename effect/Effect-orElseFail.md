# orElseFail

Executes this effect and returns its value, if it succeeds, but otherwise
fails with the specified error.

To import and use `orElseFail` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.orElseFail
```

**Signature**

```ts
export declare const orElseFail: {
  <E2>(evaluate: LazyArg<E2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E2, R>
  <A, E, R, E2>(self: Effect<A, E, R>, evaluate: LazyArg<E2>): Effect<A, E2, R>
}
```
