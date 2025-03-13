Package: `effect`<br />
Module: `TSet`<br />

## TSet.retainIf

Retains entries in a `TSet` that satisfy the specified predicate and returns the removed entries
(or `void` if `discard = true`).

**Signature**

```ts
declare const retainIf: { <A>(predicate: Predicate<A>, options: { readonly discard: true; }): (self: TSet<A>) => STM.STM<void>; <A>(predicate: Predicate<A>, options?: { readonly discard: false; }): (self: TSet<A>) => STM.STM<Array<A>>; <A>(self: TSet<A>, predicate: Predicate<A>, options: { readonly discard: true; }): STM.STM<void>; <A>(self: TSet<A>, predicate: Predicate<A>, options?: { readonly discard: false; }): STM.STM<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TSet.ts#L227)

Since v2.0.0