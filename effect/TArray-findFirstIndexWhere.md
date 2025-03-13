Package: `effect`<br />
Module: `TArray`<br />

## TArray.findFirstIndexWhere

Get the index of the first entry in the array matching a predicate.

**Signature**

```ts
declare const findFirstIndexWhere: { <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<Option.Option<number>>; <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<Option.Option<number>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L185)

Since v2.0.0