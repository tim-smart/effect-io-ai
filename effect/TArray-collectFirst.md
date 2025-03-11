## collectFirst

Finds the result of applying a partial function to the first value in its
domain.

**Signature**

```ts
declare const collectFirst: { <A, B>(pf: (a: A) => Option.Option<B>): (self: TArray<A>) => STM.STM<Option.Option<B>>; <A, B>(self: TArray<A>, pf: (a: A) => Option.Option<B>): STM.STM<Option.Option<B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L60)

Since v2.0.0