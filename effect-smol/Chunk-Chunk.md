Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.Chunk

A Chunk is an immutable, ordered collection optimized for efficient concatenation and access patterns.

**Example**

```ts
import { Chunk } from "effect"

const chunk: Chunk.Chunk<number> = Chunk.make(1, 2, 3)
console.log(chunk.length) // 3
console.log(Chunk.toArray(chunk)) // [1, 2, 3]
```

**Signature**

```ts
export interface Chunk<out A> extends Iterable<A>, Equal.Equal, Pipeable, Inspectable {
  readonly [TypeId]: {
    readonly _A: Covariant<A>
  }
  readonly length: number
  right: Chunk<A>
  left: Chunk<A>
  backing: Backing<A>
  depth: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L110)

Since v2.0.0