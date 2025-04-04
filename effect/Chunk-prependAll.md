Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.prependAll

Prepends the specified prefix chunk to the beginning of the specified chunk.
If either chunk is non-empty, the result is also a non-empty chunk.

**Example**

```ts
import { Chunk } from "effect"

const result = Chunk.make(1, 2).pipe(Chunk.prependAll(Chunk.make("a", "b")), Chunk.toArray)

console.log(result)
// [ "a", "b", 1, 2 ]
```

**Signature**

```ts
declare const prependAll: { <S extends Chunk<any>, T extends Chunk<any>>(that: T): (self: S) => Chunk.OrNonEmpty<S, T, Chunk.Infer<S> | Chunk.Infer<T>>; <A, B>(self: Chunk<A>, that: NonEmptyChunk<B>): NonEmptyChunk<A | B>; <A, B>(self: NonEmptyChunk<A>, that: Chunk<B>): NonEmptyChunk<A | B>; <A, B>(self: Chunk<A>, that: Chunk<B>): Chunk<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L597)

Since v2.0.0