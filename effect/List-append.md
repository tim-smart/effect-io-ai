## append

Appends the specified element to the end of the `List`, creating a new `Cons`.

**Signature**

```ts
declare const append: { <B>(element: B): <A>(self: List<A>) => Cons<A | B>; <A, B>(self: List<A>, element: B): Cons<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L318)

Since v2.0.0