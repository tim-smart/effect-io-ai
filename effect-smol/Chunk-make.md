Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.make

Builds a `NonEmptyChunk` from an non-empty collection of elements.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(chunk)
// { _id: 'Chunk', values: [ 1, 2, 3, 4 ] }
```

**Signature**

```ts
declare const make: <As extends readonly [any, ...Array<any>]>(...as: As) => NonEmptyChunk<As[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L373)

Since v2.0.0