# filterOrFail

Filter the specified effect with the provided function, failing with specified
error if the predicate fails.

To import and use `filterOrFail` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterOrFail
```

**Signature**

```ts
export declare const filterOrFail: {
  <A, B extends A, E2>(f: Refinement<A, B>, error: LazyArg<E2>): <R, E>(self: Effect<R, E, A>) => Effect<R, E2 | E, B>
  <A, E2>(f: Predicate<A>, error: LazyArg<E2>): <R, E>(self: Effect<R, E, A>) => Effect<R, E2 | E, A>
  <R, E, A, B extends A, E2>(self: Effect<R, E, A>, f: Refinement<A, B>, error: LazyArg<E2>): Effect<R, E | E2, B>
  <R, E, A, E2>(self: Effect<R, E, A>, f: Predicate<A>, error: LazyArg<E2>): Effect<R, E | E2, A>
}
```
