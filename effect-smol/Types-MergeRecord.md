Package: `effect`<br />
Module: `Types`<br />

## Types.MergeRecord

Alias for `MergeLeft`. Merges two object types where keys from
`Source` take precedence on conflict.

Prefer `MergeLeft` or `MergeRight` for clarity about which
side wins.

**Example** (Merging records)

```ts
import type { Types } from "effect"

type Result = Types.MergeRecord<
  { a: number; b: number },
  { a: string; c: boolean }
>
// { a: number; b: number; c: boolean }
```

**See**

- `MergeLeft`
- `MergeRight`

**Signature**

```ts
type MergeRecord<Source, Target> = MergeLeft<Source, Target>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L427)

Since v2.0.0