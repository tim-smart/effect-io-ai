# make

Builds a `NonEmptyChunk` from an non-empty collection of elements.

To import and use `make` from the "Chunk" module:

ts
import \* as Chunk from "effect/Chunk"
// Can be accessed like this
Chunk.make
undefined

**Signature**

```ts
export declare const make: <As extends readonly [any, ...ReadonlyArray<any>]>(...as: As) => NonEmptyChunk<As[number]>
```
