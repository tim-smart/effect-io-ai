# reduce

Folds an `Iterable<A>` using an effectual function f, working sequentially
from left to right.

To import and use `reduce` from the "STM" module:

```ts
import * as STM from "effect/STM"
// Can be accessed like this
STM.reduce
```

**Signature**

```ts
export declare const reduce: {
  <S, A, R, E>(zero: S, f: (s: S, a: A) => STM<R, E, S>): (iterable: Iterable<A>) => STM<R, E, S>
  <S, A, R, E>(iterable: Iterable<A>, zero: S, f: (s: S, a: A) => STM<R, E, S>): STM<R, E, S>
}
```
