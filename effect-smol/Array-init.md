Package: `effect`<br />
Module: `Array`<br />

## Array.init

Returns all elements except the last, or `undefined` if the array is empty.

- Allocates a new array via `slice(0, -1)`.
- Returns `undefined` (not `Option`) for empty inputs.

**Example** (Getting init)

```ts
import { Array } from "effect"

console.log(Array.init([1, 2, 3, 4])) // [1, 2, 3]
console.log(Array.init([])) // undefined
```

**See**

- `initNonEmpty` — when the array is known non-empty
- `tail` — all elements except the first

**Signature**

```ts
declare const init: <A>(self: Iterable<A>) => Array<A> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1131)

Since v2.0.0