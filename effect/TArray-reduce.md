# reduce

Atomically folds using a pure function.

To import and use `reduce` from the "TArray" module:

```ts
import * as TArray from "effect/TArray"
// Can be accessed like this
TArray.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, A>(zero: Z, f: (accumulator: Z, current: A) => Z): (self: TArray<A>) => STM.STM<Z>
  <Z, A>(self: TArray<A>, zero: Z, f: (accumulator: Z, current: A) => Z): STM.STM<Z>
}
```
