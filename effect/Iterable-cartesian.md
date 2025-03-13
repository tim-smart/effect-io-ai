Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.cartesian

Zips this Iterable crosswise with the specified Iterable.

**Signature**

```ts
declare const cartesian: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<[A, B]>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L1077)

Since v2.0.0