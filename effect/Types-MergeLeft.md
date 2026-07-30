Package: `effect`<br />
Module: `Types`<br />

## Types.MergeLeft

Merges two object where the keys of the left object take precedence in the case of a conflict.

**Example**

```ts
import type { Types } from "effect"
type MergeLeft = Types.MergeLeft<{ a: number, b: number; }, { a: string }> // { a: number; b: number; }
```

**Signature**

```ts
type MergeLeft<Source, Target> = MergeRight<Target, Source>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L187)

Since v2.0.0