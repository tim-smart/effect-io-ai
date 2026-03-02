Package: `effect`<br />
Module: `Array`<br />

## Array.getUnsafe

Reads an element at the given index, throwing if the index is out of bounds.

- Throws an `Error` with the message `"Index out of bounds: <i>"`.
- Prefer `get` for safe access.

**Example** (Unsafe index access)

```ts
import { Array } from "effect"

console.log(Array.getUnsafe([1, 2, 3], 1)) // 2
// Array.getUnsafe([1, 2, 3], 10) // throws Error
```

**See**

- `get` — safe version returning `Option`

**Signature**

```ts
declare const getUnsafe: { (index: number): <A>(self: ReadonlyArray<A>) => A; <A>(self: ReadonlyArray<A>, index: number): A; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L920)

Since v2.0.0