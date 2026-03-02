Package: `effect`<br />
Module: `Array`<br />

## Array.tail

Returns all elements except the first, or `undefined` if the array is empty.

- Allocates a new array via `slice(1)`.
- Returns `undefined` (not `Option`) for empty inputs.

**Example** (Getting the tail)

```ts
import { Array } from "effect"

console.log(Array.tail([1, 2, 3, 4])) // [2, 3, 4]
console.log(Array.tail([])) // undefined
```

**See**

- `tailNonEmpty` — when the array is known non-empty
- `init` — all elements except the last

**Signature**

```ts
declare const tail: <A>(self: Iterable<A>) => Array<A> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1086)

Since v2.0.0