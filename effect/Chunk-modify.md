Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.modify

Apply a function to the element at the specified index, creating a new `Chunk`,
or returning the input if the index is out of bounds.

**Signature**

```ts
declare const modify: { <A, B>(i: number, f: (a: A) => B): (self: Chunk<A>) => Chunk<A | B>; <A, B>(self: Chunk<A>, i: number, f: (a: A) => B): Chunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1281)

Since v2.0.0