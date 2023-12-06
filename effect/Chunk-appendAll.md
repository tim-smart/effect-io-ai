# appendAll

Concatenates two chunks, combining their elements.
If either chunk is non-empty, the result is also a non-empty chunk.

To import and use `appendAll` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.appendAll
```

**Example**

```ts
import * as Chunk from "effect/Chunk"

assert.deepStrictEqual(Chunk.make(1, 2).pipe(Chunk.appendAll(Chunk.make("a", "b")), Chunk.toArray), [1, 2, "a", "b"])
```

**Signature**

```ts
export declare const appendAll: {
  <S extends Chunk<any>, T extends Chunk<any>>(
    that: T
  ): (self: S) => Chunk.OrNonEmpty<S, T, Chunk.Infer<S> | Chunk.Infer<T>>
  <A, B>(self: Chunk<A>, that: NonEmptyChunk<B>): NonEmptyChunk<A | B>
  <A, B>(self: NonEmptyChunk<A>, that: Chunk<B>): NonEmptyChunk<A | B>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>
}
```
