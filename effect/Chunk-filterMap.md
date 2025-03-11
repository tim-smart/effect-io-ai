## filterMap

Returns a filtered and mapped subset of the elements.

**Signature**

```ts
declare const filterMap: { <A, B>(f: (a: A, i: number) => Option<B>): (self: Chunk<A>) => Chunk<B>; <A, B>(self: Chunk<A>, f: (a: A, i: number) => Option<B>): Chunk<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L676)

Since v2.0.0