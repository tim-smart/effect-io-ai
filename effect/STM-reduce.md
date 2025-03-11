## reduce

Folds an `Iterable<A>` using an effectual function f, working sequentially
from left to right.

**Signature**

```ts
declare const reduce: { <S, A, E, R>(zero: S, f: (s: S, a: A) => STM<S, E, R>): (iterable: Iterable<A>) => STM<S, E, R>; <S, A, E, R>(iterable: Iterable<A>, zero: S, f: (s: S, a: A) => STM<S, E, R>): STM<S, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1505)

Since v2.0.0