Package: `effect`<br />
Module: `STM`<br />

## STM.orTry

Tries this effect first, and if it enters retry, then it tries the other
effect. This is an equivalent of Haskell's orElse.

**Signature**

```ts
declare const orTry: { <A1, E1, R1>(that: LazyArg<STM<A1, E1, R1>>): <A, E, R>(self: STM<A, E, R>) => STM<A1 | A, E1 | E, R1 | R>; <A, E, R, A1, E1, R1>(self: STM<A, E, R>, that: LazyArg<STM<A1, E1, R1>>): STM<A | A1, E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1421)

Since v2.0.0