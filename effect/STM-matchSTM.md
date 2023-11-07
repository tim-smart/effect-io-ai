# matchSTM

Effectfully folds over the `STM` effect, handling both failure and success.

To import and use `matchSTM` from the "STM" module:

```ts
import * as STM from 'effect/STM'

// Can be accessed like this
STM.matchSTM
```

**Signature**

```ts
export declare const matchSTM: {
  <E, R1, E1, A1, A, R2, E2, A2>(options: {
    readonly onFailure: (e: E) => STM<R1, E1, A1>
    readonly onSuccess: (a: A) => STM<R2, E2, A2>
  }): <R>(self: STM<R, E, A>) => STM<R1 | R2 | R, E1 | E2, A1 | A2>
  <R, E, R1, E1, A1, A, R2, E2, A2>(
    self: STM<R, E, A>,
    options: { readonly onFailure: (e: E) => STM<R1, E1, A1>; readonly onSuccess: (a: A) => STM<R2, E2, A2> }
  ): STM<R | R1 | R2, E1 | E2, A1 | A2>
}
```
