Package: `effect`<br />
Module: `TArray`<br />

## TArray.reduce

Atomically folds using a pure function.

**Signature**

```ts
declare const reduce: { <Z, A>(zero: Z, f: (accumulator: Z, current: A) => Z): (self: TArray<A>) => STM.STM<Z>; <Z, A>(self: TArray<A>, zero: Z, f: (accumulator: Z, current: A) => Z): STM.STM<Z>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L373)

Since v2.0.0