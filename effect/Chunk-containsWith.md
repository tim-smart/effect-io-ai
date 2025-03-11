## containsWith

Returns a function that checks if a `Chunk` contains a given value using a provided `isEquivalent` function.

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Chunk<A>) => boolean; (self: Chunk<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1330)

Since v2.0.0