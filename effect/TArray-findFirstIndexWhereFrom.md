Package: `effect`<br />
Module: `TArray`<br />

## TArray.findFirstIndexWhereFrom

Get the index of the first entry in the array starting from the specified
index, matching a predicate.

**Signature**

```ts
declare const findFirstIndexWhereFrom: { <A>(predicate: Predicate<A>, from: number): (self: TArray<A>) => STM.STM<Option.Option<number>>; <A>(self: TArray<A>, predicate: Predicate<A>, from: number): STM.STM<Option.Option<number>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L197)

Since v2.0.0