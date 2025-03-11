## filterMap

Filters and maps a list using the specified partial function. The resulting
list may be smaller than the input list due to the possibility of the partial
function not being defined for some elements.

**Signature**

```ts
declare const filterMap: { <A, B>(f: (a: A) => Option.Option<B>): (self: List<A>) => List<B>; <A, B>(self: List<A>, f: (a: A) => Option.Option<B>): List<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L597)

Since v2.0.0