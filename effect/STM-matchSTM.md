# matchSTM

Effectfully folds over the `STM` effect, handling both failure and success.

To import and use `matchSTM` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.matchSTM
```

**Signature**

```ts
export declare const matchSTM: {
  <E, A1, E1, R1, A, A2, E2, R2>(options: {
    readonly onFailure: (e: E) => STM<A1, E1, R1>
    readonly onSuccess: (a: A) => STM<A2, E2, R2>
  }): <R>(self: STM<A, E, R>) => STM<A1 | A2, E1 | E2, R1 | R2 | R>
  <A, E, R, A1, E1, R1, A2, E2, R2>(
    self: STM<A, E, R>,
    options: { readonly onFailure: (e: E) => STM<A1, E1, R1>; readonly onSuccess: (a: A) => STM<A2, E2, R2> }
  ): STM<A1 | A2, E1 | E2, R | R1 | R2>
}
```
