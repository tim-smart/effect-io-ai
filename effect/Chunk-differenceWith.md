Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.differenceWith

Creates a `Chunk` of values not included in the other given `Chunk` using the provided `isEquivalent` function.
The order and references of result values are determined by the first `Chunk`.

**Signature**

```ts
declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Chunk<A>): (self: Chunk<A>) => Chunk<A>; (self: Chunk<A>, that: Chunk<A>): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L1452)

Since v3.2.0