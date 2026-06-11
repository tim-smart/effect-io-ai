Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.get

Gets the value at an index in a `Chunk` safely, returning `None` when the index is
out of bounds.

**Example** (Accessing elements safely)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make("a", "b", "c", "d")

console.log(Chunk.get(chunk, 1)) // Option.some("b")
console.log(Chunk.get(chunk, 10)) // Option.none()
console.log(Chunk.get(chunk, -1)) // Option.none()

// Using pipe syntax
const result = chunk.pipe(Chunk.get(2))
console.log(result) // Option.some("c")
```

**Signature**

```ts
declare const get: { (index: number): <A>(self: Chunk<A>) => Option<A>; <A>(self: Chunk<A>, index: number): Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L533)

Since v2.0.0