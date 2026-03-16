Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.get

This function provides a safe way to read a value at a particular index from a `Chunk`.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L576)

Since v2.0.0