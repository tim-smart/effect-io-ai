Package: `effect`<br />
Module: `Array`<br />

## Array.flatten

Flattens a nested array of arrays into a single array.

**When to use**

Use to collapse one level of nested arrays when no per-element mapping is
needed.

**Example** (Flattening nested arrays)

```ts
import { Array } from "effect"

console.log(Array.flatten([[1, 2], [], [3, 4], [], [5, 6]])) // [1, 2, 3, 4, 5, 6]
```

**See**

- `flatMap` — map then flatten in one step

**Signature**

```ts
declare const flatten: <const S extends ReadonlyArray<ReadonlyArray<any>>>(self: S) => ReadonlyArray.Flatten<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3646)

Since v2.0.0