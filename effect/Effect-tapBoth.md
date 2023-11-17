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
  <E, XE extends E, A, XA extends A, R2, E2, X, R3, E3, X1>(options: {
    readonly onFailure: (e: XE) => Effect<R2, E2, X>
    readonly onSuccess: (a: XA) => Effect<R3, E3, X1>
  }): <R>(self: Effect<R, E, A>) => Effect<R2 | R3 | R, E | E2 | E3, A>
  <R, E, A, XE extends E, XA extends A, R2, E2, X, R3, E3, X1>(
    self: Effect<R, E, A>,
    options: { readonly onFailure: (e: XE) => Effect<R2, E2, X>; readonly onSuccess: (a: XA) => Effect<R3, E3, X1> }
  ): Effect<R | R2 | R3, E | E2 | E3, A>
}
```
