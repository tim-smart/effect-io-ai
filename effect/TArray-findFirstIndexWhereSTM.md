Package: `effect`<br />
Module: `TArray`<br />

## TArray.findFirstIndexWhereSTM

Get the index of the next entry that matches a transactional predicate.

**Signature**

```ts
declare const findFirstIndexWhereSTM: { <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<Option.Option<number>, E, R>; <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<Option.Option<number>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L208)

Since v2.0.0