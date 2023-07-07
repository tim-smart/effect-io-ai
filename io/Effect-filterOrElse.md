# filterOrElse

Filters the specified effect with the provided function returning the value
of the effect if it is successful, otherwise returns the value of `orElse`.

To import and use `filterOrElse` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.filterOrElse
```

**Signature**

```ts
export declare const filterOrElse: {
  <A, B extends A, R2, E2, C>(options: {
    readonly filter: Refinement<A, B>
    readonly orElse: (a: A) => Effect<R2, E2, C>
  }): <R, E>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, B | C>
  <A, R2, E2, B>(options: { readonly filter: Predicate<A>; readonly orElse: (a: A) => Effect<R2, E2, B> }): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R2 | R, E2 | E, A | B>
  <R, E, A, B extends A, R2, E2, C>(
    self: Effect<R, E, A>,
    options: { readonly filter: Refinement<A, B>; readonly orElse: (a: A) => Effect<R2, E2, C> }
  ): Effect<R | R2, E | E2, B | C>
  <R, E, A, R2, E2, B>(
    self: Effect<R, E, A>,
    options: { readonly filter: Predicate<A>; readonly orElse: (a: A) => Effect<R2, E2, B> }
  ): Effect<R | R2, E | E2, A | B>
}
```
