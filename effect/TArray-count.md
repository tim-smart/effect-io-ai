Package: `effect`<br />
Module: `TArray`<br />

## TArray.count

Count the values in the array matching a predicate.

**Signature**

```ts
declare const count: { <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<number>; <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<number>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L96)

Since v2.0.0