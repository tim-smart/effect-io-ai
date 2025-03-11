## reduceRight

Folds an `Iterable<A>` using an effectual function f, working sequentially
from right to left.

**Signature**

```ts
declare const reduceRight: { <S, A, R, E>(zero: S, f: (s: S, a: A) => STM<S, E, R>): (iterable: Iterable<A>) => STM<S, E, R>; <S, A, R, E>(iterable: Iterable<A>, zero: S, f: (s: S, a: A) => STM<S, E, R>): STM<S, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1535)

Since v2.0.0