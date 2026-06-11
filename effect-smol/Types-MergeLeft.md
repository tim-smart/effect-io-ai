Package: `effect`<br />
Module: `Types`<br />

## Types.MergeLeft

Left-biased merge of two object types where keys from `Source` take
precedence over `Target` on conflict.

**When to use**

Use when you want left-biased merging where the first argument wins.

**Details**

Implemented as `MergeRight<Target, Source>`.

**Example** (Left-biased merge)

```ts
import type { Types } from "effect"

type Result = Types.MergeLeft<
  { a: number; b: number },
  { a: string; c: boolean }
>
// { a: number; b: number; c: boolean }
```

**See**

- `MergeRight`
- `Simplify`

**Signature**

```ts
type MergeLeft<Source, Target> = MergeRight<Target, Source>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L373)

Since v2.0.0