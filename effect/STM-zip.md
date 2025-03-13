Package: `effect`<br />
Module: `STM`<br />

## STM.zip

Sequentially zips this value with the specified one.

**Signature**

```ts
declare const zip: { <A1, E1, R1>(that: STM<A1, E1, R1>): <A, E, R>(self: STM<A, E, R>) => STM<[A, A1], E1 | E, R1 | R>; <A, E, R, A1, E1, R1>(self: STM<A, E, R>, that: STM<A1, E1, R1>): STM<[A, A1], E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1922)

Since v2.0.0