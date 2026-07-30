Package: `effect`<br />
Module: `TArray`<br />

## TArray.findFirstIndexFrom

Get the first index of a specific value in the array starting from the
specified index.

**Signature**

```ts
declare const findFirstIndexFrom: { <A>(value: A, from: number): (self: TArray<A>) => STM.STM<Option.Option<number>>; <A>(self: TArray<A>, value: A, from: number): STM.STM<Option.Option<number>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L174)

Since v2.0.0