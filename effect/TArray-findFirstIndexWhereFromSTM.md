## findFirstIndexWhereFromSTM

Starting at specified index, get the index of the next entry that matches a
transactional predicate.

**Signature**

```ts
declare const findFirstIndexWhereFromSTM: { <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>, from: number): (self: TArray<A>) => STM.STM<Option.Option<number>, E, R>; <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>, from: number): STM.STM<Option.Option<number>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L220)

Since v2.0.0