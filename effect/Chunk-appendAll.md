Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.appendAll

Concatenates two chunks, combining their elements.
If either chunk is non-empty, the result is also a non-empty chunk.

**Example**

```ts
import { Chunk } from "effect"

const result = Chunk.make(1, 2).pipe(Chunk.appendAll(Chunk.make("a", "b")), Chunk.toArray)

console.log(result)
// [ 1, 2, "a", "b" ]
```

**Signature**

```ts
declare const appendAll: { <S extends Chunk<any>, T extends Chunk<any>>(that: T): (self: S) => Chunk.OrNonEmpty<S, T, Chunk.Infer<S> | Chunk.Infer<T>>; <A, B>(self: Chunk<A>, that: NonEmptyChunk<B>): NonEmptyChunk<A | B>; <A, B>(self: NonEmptyChunk<A>, that: Chunk<B>): NonEmptyChunk<A | B>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L624)

Since v2.0.0