Package: `effect`<br />
Module: `STM`<br />

## STM.mergeAll

Merges an `Iterable<STM>` to a single `STM`, working sequentially.

**Signature**

```ts
declare const mergeAll: { <A2, A>(zero: A2, f: (a2: A2, a: A) => A2): <E, R>(iterable: Iterable<STM<A, E, R>>) => STM<A2, E, R>; <A, E, R, A2>(iterable: Iterable<STM<A, E, R>>, zero: A2, f: (a2: A2, a: A) => A2): STM<A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1297)

Since v2.0.0