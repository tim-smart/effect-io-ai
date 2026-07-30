Package: `effect`<br />
Module: `TArray`<br />

## TArray.findLastIndexFrom

Get the last index of a specific value in the array bounded above by a
specific index.

**Signature**

```ts
declare const findLastIndexFrom: { <A>(value: A, end: number): (self: TArray<A>) => STM.STM<Option.Option<number>>; <A>(self: TArray<A>, value: A, end: number): STM.STM<Option.Option<number>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L273)

Since v2.0.0