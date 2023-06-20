# repeatWhile

Repeats this effect while its value satisfies the specified effectful
predicate or until the first failure.

To import and use `repeatWhile` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.repeatWhile
```

**Signature**

```ts
export declare const repeatWhile: {
  <A>(f: Predicate<A>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>): Effect<R, E, A>
}
```
