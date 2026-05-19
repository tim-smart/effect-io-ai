Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.make

Builds a `NonEmptyChunk` from an non-empty collection of elements.

**Example** (Creating a non-empty chunk)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.toArray(chunk)) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const make: <As extends readonly [any, ...Array<any>]>(...as: As) => NonEmptyChunk<As[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L379)

Since v2.0.0