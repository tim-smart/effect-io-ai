# tapBoth

Returns an effect that effectfully "peeks" at the failure or success of
this effect.

To import and use `tapBoth` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.tapBoth
```

**Signature**

```ts
export declare const tapBoth: {
  <E, X, E2, R2, A, X1, E3, R3>(options: {
    readonly onFailure: (e: NoInfer<E>) => Effect<X, E2, R2>
    readonly onSuccess: (a: NoInfer<A>) => Effect<X1, E3, R3>
  }): <R>(self: Effect<A, E, R>) => Effect<A, E | E2 | E3, R2 | R3 | R>
  <A, E, R, X, E2, R2, X1, E3, R3>(
    self: Effect<A, E, R>,
    options: { readonly onFailure: (e: E) => Effect<X, E2, R2>; readonly onSuccess: (a: A) => Effect<X1, E3, R3> }
  ): Effect<A, E | E2 | E3, R | R2 | R3>
}
```
