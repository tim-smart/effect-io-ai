## intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

**Signature**

```ts
declare const intersperse: { <B>(middle: B): <A>(self: Iterable<A>) => Iterable<A | B>; <A, B>(self: Iterable<A>, middle: B): Iterable<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L498)

Since v2.0.0