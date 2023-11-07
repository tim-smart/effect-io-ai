# mapBoth

Returns an effect whose failure and success channels have been mapped by
the specified `onFailure` and `onSuccess` functions.

To import and use `mapBoth` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.mapBoth
```

**Signature**

```ts
export declare const mapBoth: {
  <E, A, E2, A2>(options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2 }): <R>(
    self: Effect<R, E, A>
  ) => Effect<R, E2, A2>
  <R, E, A, E2, A2>(
    self: Effect<R, E, A>,
    options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2 }
  ): Effect<R, E2, A2>
}
```
