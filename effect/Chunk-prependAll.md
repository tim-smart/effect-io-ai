# prependAll

Prepends the specified prefix chunk to the beginning of the specified chunk.
If either chunk is non-empty, the result is also a non-empty chunk.

To import and use `prependAll` from the "Chunk" module:

```ts
import * as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.prependAll
```

**Example**

```ts
import * as Chunk from "effect/Chunk"

assert.deepStrictEqual(Chunk.make(1, 2).pipe(Chunk.prependAll(Chunk.make("a", "b")), Chunk.toArray), ["a", "b", 1, 2])
```

**Signature**

```ts
export declare const prependAll: {
  <S extends Chunk<any>, T extends Chunk<any>>(
    that: T
  ): (self: S) => Chunk.OrNonEmpty<S, T, Chunk.Infer<S> | Chunk.Infer<T>>
  <A, B>(self: Chunk<A>, that: NonEmptyChunk<B>): NonEmptyChunk<A | B>
  <A, B>(self: NonEmptyChunk<A>, that: Chunk<B>): NonEmptyChunk<A | B>
  <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>
}
```
