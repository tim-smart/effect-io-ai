## findFirst

Find the first element in the array matching the specified predicate.

**Signature**

```ts
declare const findFirst: { <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<Option.Option<A>>; <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L151)

Since v2.0.0