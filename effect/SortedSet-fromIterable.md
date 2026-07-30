Package: `effect`<br />
Module: `SortedSet`<br />

## SortedSet.fromIterable

Creates a new `SortedSet` from an iterable collection of values.

**Signature**

```ts
declare const fromIterable: { <B>(ord: Order<B>): <A extends B>(iterable: Iterable<A>) => SortedSet<A>; <A extends B, B>(iterable: Iterable<A>, ord: Order<B>): SortedSet<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SortedSet.ts#L100)

Since v2.0.0