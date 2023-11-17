# retryWhile

Retries this effect while its error satisfies the specified predicate.

To import and use `retryWhile` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.retryWhile
```

**Signature**

```ts
export declare const retryWhile: {
  <E>(f: Predicate<E>): <R, A>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<E>): Effect<R, E, A>
}
```
