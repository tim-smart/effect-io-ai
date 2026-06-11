Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.getUnsafe

Gets an element at the specified index without returning an `Option`.

**When to use**

Use when reading from a `Chunk` at an index known to be in bounds and direct
element access is preferred over handling `Option.none`.

**Gotchas**

Throws if the index is out of bounds.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L634)

Since v4.0.0