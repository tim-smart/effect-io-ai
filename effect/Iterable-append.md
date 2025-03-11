## append

Append an element to the end of an `Iterable`, creating a new `Iterable`.

**Signature**

```ts
declare const append: { <B>(last: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, last: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L169)

Since v2.0.0