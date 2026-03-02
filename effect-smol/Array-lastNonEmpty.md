Package: `effect`<br />
Module: `Array`<br />

## Array.lastNonEmpty

Returns the last element of a `NonEmptyReadonlyArray` directly (no `Option`
wrapper).

**Example** (Getting the last of a non-empty array)

```ts
import { Array } from "effect"

console.log(Array.lastNonEmpty([1, 2, 3, 4])) // 4
```

**See**

- `last` — safe version for possibly-empty arrays

**Signature**

```ts
declare const lastNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1064)

Since v2.0.0