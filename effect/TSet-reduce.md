# reduce

Atomically folds using a pure function.

To import and use `reduce` from the "TSet" module:

```ts
import * as TSet from "effect/TSet"
// Can be accessed like this
TSet.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, A>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: TSet<A>) => STM.STM<never, never, Z>
  <Z, A>(self: TSet<A>, zero: Z, f: (accumulator: Z, value: A) => Z): STM.STM<never, never, Z>
}
```
