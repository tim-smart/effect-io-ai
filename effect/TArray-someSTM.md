## someSTM

Determine if the array contains a value satisfying a transactional
predicate.

**Signature**

```ts
declare const someSTM: { <A, R, E>(predicate: (value: A) => STM.STM<boolean, E, R>): (self: TArray<A>) => STM.STM<boolean, E, R>; <A, R, E>(self: TArray<A>, predicate: (value: A) => STM.STM<boolean, E, R>): STM.STM<boolean, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L439)

Since v2.0.0