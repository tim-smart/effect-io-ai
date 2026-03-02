Package: `effect`<br />
Module: `Array`<br />

## Array.initNonEmpty

Returns all elements except the last of a `NonEmptyReadonlyArray`.

**Example** (Getting init of a non-empty array)

```ts
import { Array } from "effect"

console.log(Array.initNonEmpty([1, 2, 3, 4])) // [1, 2, 3]
```

**See**

- `init` — safe version for possibly-empty arrays
- `tailNonEmpty` — all elements except the first

**Signature**

```ts
declare const initNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1154)

Since v2.0.0