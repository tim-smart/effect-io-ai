# reduceRight

Folds an `Iterable<A>` using an effectual function f, working sequentially
from right to left.

To import and use `reduceRight` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.reduceRight
```

**Signature**

```ts
export declare const reduceRight: {
  <S, A, R, E>(zero: S, f: (s: S, a: A) => STM<R, E, S>): (iterable: Iterable<A>) => STM<R, E, S>
  <S, A, R, E>(iterable: Iterable<A>, zero: S, f: (s: S, a: A) => STM<R, E, S>): STM<R, E, S>
}
```
