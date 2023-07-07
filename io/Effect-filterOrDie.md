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
  <A, B extends A>(options: { readonly filter: Refinement<A, B>; readonly orDieWith: LazyArg<unknown> }): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E, B>
  <A>(options: { readonly filter: Predicate<A>; readonly orDieWith: LazyArg<unknown> }): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E, A>
  <R, E, A, B extends A>(
    self: Effect<R, E, A>,
    options: { readonly filter: Refinement<A, B>; readonly orDieWith: LazyArg<unknown> }
  ): Effect<R, E, B>
  <R, E, A>(
    self: Effect<R, E, A>,
    options: { readonly filter: Predicate<A>; readonly orDieWith: LazyArg<unknown> }
  ): Effect<R, E, A>
}
```
