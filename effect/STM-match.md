# match

Folds over the `STM` effect, handling both failure and success, but not
retry.

To import and use `match` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.match
undefined

**Signature**

```ts
export declare const match: {
  <E, A2, A, A3>(options: {
    readonly onFailure: (error: E) => A2
    readonly onSuccess: (value: A) => A3
  }): <R>(self: STM<A, E, R>) => STM<A2 | A3, never, R>
  <A, E, R, A2, A3>(
    self: STM<A, E, R>,
    options: { readonly onFailure: (error: E) => A2; readonly onSuccess: (value: A) => A3 }
  ): STM<A2 | A3, never, R>
}
```
