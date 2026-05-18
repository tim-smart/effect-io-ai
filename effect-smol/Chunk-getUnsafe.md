Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.getUnsafe

Gets an element unsafely, will throw on out of bounds

**Example** (Accessing elements unsafely)

```ts
import { Chunk, Option } from "effect"

const chunk = Chunk.make("a", "b", "c", "d")

console.log(Chunk.getUnsafe(chunk, 1)) // "b"
console.log(Chunk.getUnsafe(chunk, 3)) // "d"

// Use Chunk.get when the index may be out of bounds
console.log(Option.isNone(Chunk.get(chunk, 10))) // true
```

**Signature**

```ts
declare const getUnsafe: { (index: number): <A>(self: Chunk<A>) => A; <A>(self: Chunk<A>, index: number): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L662)

Since v2.0.0