Package: `effect`<br />
Module: `STM`<br />

## STM.replicateSTM

Performs this transaction the specified number of times and collects the
results.

**Signature**

```ts
declare const replicateSTM: { (n: number): <A, E, R>(self: STM<A, E, R>) => STM<Array<A>, E, R>; <A, E, R>(self: STM<A, E, R>, n: number): STM<Array<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1648)

Since v2.0.0