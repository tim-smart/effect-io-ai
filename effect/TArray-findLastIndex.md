## findLastIndex

Get the last index of a specific value in the array bounded above by a
specific index.

**Signature**

```ts
declare const findLastIndex: { <A>(value: A): (self: TArray<A>) => STM.STM<Option.Option<number>>; <A>(self: TArray<A>, value: A): STM.STM<Option.Option<number>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L261)

Since v2.0.0