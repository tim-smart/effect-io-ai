# make

Builds a `NonEmptyChunk` from an non-empty collection of elements.

To import and use `make` from the "Chunk" module:

```ts
import * as Chunk from '@effect/data/Chunk'

// Can be accessed like this
Chunk.make
```

**Signature**

```ts
export declare const make: <As extends readonly [any, ...any[]]>(...as: As) => NonEmptyChunk<As[number]>
```
