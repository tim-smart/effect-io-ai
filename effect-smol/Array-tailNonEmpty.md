Package: `effect`<br />
Module: `Array`<br />

## Array.tailNonEmpty

Returns all elements except the first of a `NonEmptyReadonlyArray`.

**Example** (Getting the tail of a non-empty array)

```ts
import { Array } from "effect"

console.log(Array.tailNonEmpty([1, 2, 3, 4])) // [2, 3, 4]
```

**See**

- `tail` — safe version for possibly-empty arrays
- `initNonEmpty` — all elements except the last

**Signature**

```ts
declare const tailNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1108)

Since v2.0.0