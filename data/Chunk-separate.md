# separate

Partitions the elements of this chunk into two chunks.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const separate: <A, B>(self: Chunk<Either<A, B>>) => readonly [Chunk<A>, Chunk<B>]
```
