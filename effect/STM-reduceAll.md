Package: `effect`<br />
Module: `STM`<br />

## STM.reduceAll

Reduces an `Iterable<STM>` to a single `STM`, working sequentially.

**Signature**

```ts
declare const reduceAll: { <A, E2, R2>(initial: STM<A, E2, R2>, f: (x: A, y: A) => A): <E, R>(iterable: Iterable<STM<A, E, R>>) => STM<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(iterable: Iterable<STM<A, E, R>>, initial: STM<A, E2, R2>, f: (x: A, y: A) => A): STM<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1516)

Since v2.0.0