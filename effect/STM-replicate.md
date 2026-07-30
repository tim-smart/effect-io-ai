Package: `effect`<br />
Module: `STM`<br />

## STM.replicate

Replicates the given effect n times. If 0 or negative numbers are given, an
empty `Chunk` will be returned.

**Signature**

```ts
declare const replicate: { (n: number): <A, E, R>(self: STM<A, E, R>) => Array<STM<A, E, R>>; <A, E, R>(self: STM<A, E, R>, n: number): Array<STM<A, E, R>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1636)

Since v2.0.0