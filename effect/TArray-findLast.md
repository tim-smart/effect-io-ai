Package: `effect`<br />
Module: `TArray`<br />

## TArray.findLast

Find the last element in the array matching a predicate.

**Signature**

```ts
declare const findLast: { <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<Option.Option<A>>; <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<Option.Option<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L249)

Since v2.0.0