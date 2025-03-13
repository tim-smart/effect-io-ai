Package: `effect`<br />
Module: `List`<br />

## List.prepend

Prepends the specified element to the beginning of the list.

**Signature**

```ts
declare const prepend: { <B>(element: B): <A>(self: List<A>) => Cons<A | B>; <A, B>(self: List<A>, element: B): Cons<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L354)

Since v2.0.0