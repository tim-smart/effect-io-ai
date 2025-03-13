Package: `effect`<br />
Module: `TArray`<br />

## TArray.maxOption

Atomically compute the greatest element in the array, if it exists.

**Signature**

```ts
declare const maxOption: { <A>(order: Order.Order<A>): (self: TArray<A>) => STM.STM<Option.Option<A>>; <A>(self: TArray<A>, order: Order.Order<A>): STM.STM<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L351)

Since v2.0.0