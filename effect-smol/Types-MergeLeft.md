Package: `effect`<br />
Module: `Types`<br />

## Types.MergeLeft

Merges two object types where keys from `Source` take precedence over
`Target` on conflict.

- Use when you want left-biased merging (first argument wins).
- Implemented as `MergeRight<Target, Source>`.

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
- `MergeRecord`
- `Simplify`

**Signature**

```ts
type MergeLeft<Source, Target> = MergeRight<Target, Source>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L368)

Since v2.0.0