Package: `effect`<br />
Module: `TArray`<br />

## TArray.findFirstIndex

Get the first index of a specific value in the array.

**Signature**

```ts
declare const findFirstIndex: { <A>(value: A): (self: TArray<A>) => STM.STM<Option.Option<number>>; <A>(self: TArray<A>, value: A): STM.STM<Option.Option<number>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L162)

Since v2.0.0