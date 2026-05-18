Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.map

Transforms each element of an iterable using a function.

This is one of the most fundamental operations for working with iterables.
It applies a transformation function to each element, creating a new iterable
with the transformed values. The operation is lazy - elements are only
transformed when the iterable is consumed.

**Signature**

```ts
declare const map: { <A, B>(f: (a: NoInfer<A>, i: number) => B): (self: Iterable<A>) => Iterable<B>; <A, B>(self: Iterable<A>, f: (a: NoInfer<A>, i: number) => B): Iterable<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L1429)

Since v2.0.0