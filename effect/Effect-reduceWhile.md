# reduceWhile

Folds over the elements in this chunk from the left, stopping the fold early
when the predicate is not satisfied.

To import and use `reduceWhile` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.reduceWhile
```

**Signature**

```ts
export declare const reduceWhile: {
  <A, R, E, Z>(
    zero: Z,
    options: { readonly while: Predicate<Z>; readonly body: (s: Z, a: A, i: number) => Effect<R, E, Z> }
  ): (elements: Iterable<A>) => Effect<R, E, Z>
  <A, R, E, Z>(
    elements: Iterable<A>,
    zero: Z,
    options: { readonly while: Predicate<Z>; readonly body: (s: Z, a: A, i: number) => Effect<R, E, Z> }
  ): Effect<R, E, Z>
}
```
