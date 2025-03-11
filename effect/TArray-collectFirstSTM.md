## collectFirstSTM

Finds the result of applying an transactional partial function to the first
value in its domain.

**Signature**

```ts
declare const collectFirstSTM: { <A, B, E, R>(pf: (a: A) => Option.Option<STM.STM<B, E, R>>): (self: TArray<A>) => STM.STM<Option.Option<B>, E, R>; <A, B, E, R>(self: TArray<A>, pf: (a: A) => Option.Option<STM.STM<B, E, R>>): STM.STM<Option.Option<B>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L72)

Since v2.0.0