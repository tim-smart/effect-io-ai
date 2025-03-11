## reduce

Atomically folds using a pure function.

**Signature**

```ts
declare const reduce: { <Z, A>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: TSet<A>) => STM.STM<Z>; <Z, A>(self: TSet<A>, zero: Z, f: (accumulator: Z, value: A) => Z): STM.STM<Z>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L153)

Since v2.0.0