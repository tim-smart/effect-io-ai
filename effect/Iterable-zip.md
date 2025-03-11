## zip

Takes two `Iterable`s and returns an `Iterable` of corresponding pairs.

**Signature**

```ts
declare const zip: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<[A, B]>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<[A, B]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L457)

Since v2.0.0