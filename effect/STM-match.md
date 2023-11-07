# match

Folds over the `STM` effect, handling both failure and success, but not
retry.

To import and use `match` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.match
```

**Signature**

```ts
export declare const match: {
  <E, A2, A, A3>(options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3 }): <R>(
    self: STM<R, E, A>
  ) => STM<R, never, A2 | A3>
  <R, E, A2, A, A3>(
    self: STM<R, E, A>,
    options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3 }
  ): STM<R, never, A2 | A3>
}
```
