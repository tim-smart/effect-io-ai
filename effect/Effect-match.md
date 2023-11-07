# match

Folds over the failure value or the success value to yield an effect that
does not fail, but succeeds with the value returned by the left or right
function passed to `match`.

To import and use `match` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.match
```

**Signature**

```ts
export declare const match: {
  <E, A, A2, A3>(options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3 }): <R>(
    self: Effect<R, E, A>
  ) => Effect<R, never, A2 | A3>
  <R, E, A, A2, A3>(
    self: Effect<R, E, A>,
    options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3 }
  ): Effect<R, never, A2 | A3>
}
```
