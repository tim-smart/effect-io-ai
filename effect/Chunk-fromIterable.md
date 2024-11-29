# fromIterable

Creates a new `Chunk` from an iterable collection of values.

To import and use `fromIterable` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.fromIterable
undefined

**Signature**

```ts
export declare const fromIterable: <A>(self: Iterable<A>) => Chunk<A>
```
