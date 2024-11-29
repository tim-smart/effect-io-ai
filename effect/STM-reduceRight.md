# reduceRight

Folds an `Iterable<A>` using an effectual function f, working sequentially
from right to left.

To import and use `reduceRight` from the "STM" module:

ts
import \* as STM from "effect/STM"
// Can be accessed like this
STM.reduceRight
undefined

**Signature**

```ts
export declare const reduceRight: {
  <S, A, R, E>(zero: S, f: (s: S, a: A) => STM<S, E, R>): (iterable: Iterable<A>) => STM<S, E, R>
  <S, A, R, E>(iterable: Iterable<A>, zero: S, f: (s: S, a: A) => STM<S, E, R>): STM<S, E, R>
}
```
