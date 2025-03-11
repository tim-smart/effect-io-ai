## partitionMap

Partition a list into two lists, where the first list contains all elements
for which the specified function returned a `Left`, and the second list
contains all elements for which the specified function returned a `Right`.

**Signature**

```ts
declare const partitionMap: { <A, B, C>(f: (a: A) => Either.Either<C, B>): (self: List<A>) => [left: List<B>, right: List<C>]; <A, B, C>(self: List<A>, f: (a: A) => Either.Either<C, B>): [left: List<B>, right: List<C>]; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/List.ts#L806)

Since v2.0.0