# map

Returns a chunk with the elements mapped by the specified f function.

To import and use `map` from the "Chunk" module:

```ts
import * as Chunk from 'effect/Chunk'

// Can be accessed like this
Chunk.map
```

**Signature**

```ts
export declare const map: {
  <T extends Chunk<any>, B>(f: (a: Chunk.Infer<T>, i: number) => B): (self: T) => Chunk.With<T, B>
  <T extends Chunk<any>, B>(self: T, f: (a: Chunk.Infer<T>, i: number) => B): Chunk.With<T, B>
}
```
