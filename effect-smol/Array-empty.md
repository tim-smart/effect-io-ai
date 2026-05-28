Package: `effect`<br />
Module: `Array`<br />

## Array.empty

Creates an empty array.

**When to use**

Use to create a typed empty array without allocating placeholder elements.

**Example** (Creating an empty array)

```ts
import { Array } from "effect"

const result = Array.empty<number>()
console.log(result) // []
```

**See**

- `of` — create a single-element array
- `make` — create from multiple values

**Signature**

```ts
declare const empty: <A = never>() => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3362)

Since v2.0.0