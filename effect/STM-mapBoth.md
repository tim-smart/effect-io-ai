# mapBoth

Returns an `STM` effect whose failure and success channels have been mapped
by the specified pair of functions, `f` and `g`.

To import and use `mapBoth` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.mapBoth
undefined

**Signature**

```ts
export declare const mapBoth: {
  <E, E2, A, A2>(options: {
    readonly onFailure: (error: E) => E2
    readonly onSuccess: (value: A) => A2
  }): <R>(self: STM<A, E, R>) => STM<A2, E2, R>
  <A, E, R, E2, A2>(
    self: STM<A, E, R>,
    options: { readonly onFailure: (error: E) => E2; readonly onSuccess: (value: A) => A2 }
  ): STM<A2, E2, R>
}
```
