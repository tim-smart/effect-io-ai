Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.zipWith

Apply a function to pairs of elements at the same index in two `Iterable`s, collecting the results. If one
input `Iterable` is short, excess elements of the longer `Iterable` are discarded.

**Signature**

```ts
declare const zipWith: { <B, A, C>(that: Iterable<B>, f: (a: A, b: B) => C): (self: Iterable<A>) => Iterable<C>; <A, B, C>(self: Iterable<A>, that: Iterable<B>, f: (a: A, b: B) => C): Iterable<C>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L472)

Since v2.0.0