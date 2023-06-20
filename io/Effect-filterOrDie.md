# filterOrDie

Filter the specified effect with the provided function, dying with specified
defect if the predicate fails.

To import and use `filterOrDie` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterOrDie
```

**Signature**

```ts
export declare const filterOrDie: {
  <A, B extends A>(f: Refinement<A, B>, defect: LazyArg<unknown>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, B>
  <A>(f: Predicate<A>, defect: LazyArg<unknown>): <R, E>(self: Effect<R, E, A>) => Effect<R, E, A>
  <R, E, A, B extends A>(self: Effect<R, E, A>, f: Refinement<A, B>, defect: LazyArg<unknown>): Effect<R, E, B>
  <R, E, A>(self: Effect<R, E, A>, f: Predicate<A>, defect: LazyArg<unknown>): Effect<R, E, A>
}
```
