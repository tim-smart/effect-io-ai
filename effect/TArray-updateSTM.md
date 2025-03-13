Package: `effect`<br />
Module: `TArray`<br />

## TArray.updateSTM

Atomically updates element in the array with given transactional effect.

**Signature**

```ts
declare const updateSTM: { <A, R, E>(index: number, f: (value: A) => STM.STM<A, E, R>): (self: TArray<A>) => STM.STM<void, E, R>; <A, R, E>(self: TArray<A>, index: number, f: (value: A) => STM.STM<A, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L492)

Since v2.0.0