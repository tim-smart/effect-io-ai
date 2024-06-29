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
  <S, A, E, R>(zero: S, f: (s: S, a: A) => STM<S, E, R>): (iterable: Iterable<A>) => STM<S, E, R>
  <S, A, E, R>(iterable: Iterable<A>, zero: S, f: (s: S, a: A) => STM<S, E, R>): STM<S, E, R>
}
```
