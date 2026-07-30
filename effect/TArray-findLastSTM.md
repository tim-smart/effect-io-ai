Package: `effect`<br />
Module: `TArray`<br />

## TArray.findLastSTM

Find the last element in the array matching a transactional predicate.

**Signature**

```ts
declare const findLastSTM: { <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<Option.Option<A>, E, R>; <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<Option.Option<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L284)

Since v2.0.0