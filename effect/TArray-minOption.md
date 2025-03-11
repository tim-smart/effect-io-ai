## minOption

Atomically compute the least element in the array, if it exists.

**Signature**

```ts
declare const minOption: { <A>(order: Order.Order<A>): (self: TArray<A>) => STM.STM<Option.Option<A>>; <A>(self: TArray<A>, order: Order.Order<A>): STM.STM<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L362)

Since v2.0.0