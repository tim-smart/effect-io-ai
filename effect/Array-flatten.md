Package: `effect`<br />
Module: `Array`<br />

## Array.flatten

Combines multiple arrays into a single array by concatenating all elements
from each nested array. This function ensures that the structure of nested
arrays is collapsed into a single, flat array.

**Example**

```ts
import { Array } from "effect"

const result = Array.flatten([[1, 2], [], [3, 4], [], [5, 6]])
console.log(result) // [1, 2, 3, 4, 5, 6]
```

**Signature**

```ts
declare const flatten: <S extends ReadonlyArray<ReadonlyArray<any>>>(self: S) => ReadonlyArray.Flatten<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2541)

Since v2.0.0