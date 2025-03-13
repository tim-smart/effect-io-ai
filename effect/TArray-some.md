Package: `effect`<br />
Module: `TArray`<br />

## TArray.some

Determine if the array contains a value satisfying a predicate.

**Signature**

```ts
declare const some: { <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<boolean>; <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L427)

Since v2.0.0