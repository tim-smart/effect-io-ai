Package: `effect`<br />
Module: `STM`<br />

## STM.zipWith

Sequentially zips this value with the specified one, combining the values
using the specified combiner function.

**Signature**

```ts
declare const zipWith: { <A1, E1, R1, A, A2>(that: STM<A1, E1, R1>, f: (a: A, b: A1) => A2): <E, R>(self: STM<A, E, R>) => STM<A2, E1 | E, R1 | R>; <A, E, R, A1, E1, R1, A2>(self: STM<A, E, R>, that: STM<A1, E1, R1>, f: (a: A, b: A1) => A2): STM<A2, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1958)

Since v2.0.0