Package: `effect`<br />
Module: `TArray`<br />

## TArray.countSTM

Count the values in the array matching a transactional predicate.

**Signature**

```ts
declare const countSTM: { <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<number, E, R>; <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<number, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L108)

Since v2.0.0