Package: `effect`<br />
Module: `Array`<br />

## Array.empty

Creates an empty array.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2918)

Since v2.0.0