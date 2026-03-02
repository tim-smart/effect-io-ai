Package: `effect`<br />
Module: `Array`<br />

## Array.ReadonlyArray.Flatten

Flattens a nested array type.

**Example**

```ts
import type { Array } from "effect"

type Nested = ReadonlyArray<ReadonlyArray<number>>
type Flattened = Array.ReadonlyArray.Flatten<Nested>
// Flattened is Array<number>
```

**Signature**

```ts
type Flatten<T> = T extends
    NonEmptyReadonlyArray<NonEmptyReadonlyArray<any>> ? NonEmptyArray<T[number][number]>
    : Array<T[number][number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3046)

Since v2.0.0