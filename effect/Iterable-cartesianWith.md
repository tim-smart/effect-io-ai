Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.cartesianWith

Zips this Iterable crosswise with the specified Iterable using the specified combiner.

**Signature**

```ts
declare const cartesianWith: { <A, B, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Iterable<C>; <A, B, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Iterable<C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L1062)

Since v2.0.0