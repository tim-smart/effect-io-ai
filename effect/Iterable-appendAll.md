## appendAll

Concatenates two iterables, combining their elements.

**Signature**

```ts
declare const appendAll: { <B>(that: Iterable<B>): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, that: Iterable<B>): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L180)

Since v2.0.0