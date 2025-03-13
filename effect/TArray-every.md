Package: `effect`<br />
Module: `TArray`<br />

## TArray.every

Atomically evaluate the conjunction of a predicate across the members of
the array.

**Signature**

```ts
declare const every: { <A>(predicate: Predicate<A>): (self: TArray<A>) => STM.STM<boolean>; <A>(self: TArray<A>, predicate: Predicate<A>): STM.STM<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TArray.ts#L128)

Since v2.0.0