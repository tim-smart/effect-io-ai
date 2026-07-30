Package: `effect`<br />
Module: `TArray`<br />

## TArray.transformSTM

Atomically updates all elements using a transactional effect.

**Signature**

```ts
declare const transformSTM: { <A, R, E>(f: (value: A) => STM.STM<A, E, R>): (self: TArray<A>) => STM.STM<void, E, R>; <A, R, E>(self: TArray<A>, f: (value: A) => STM.STM<A, E, R>): STM.STM<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L470)

Since v2.0.0