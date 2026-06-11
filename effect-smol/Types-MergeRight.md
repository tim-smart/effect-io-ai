Package: `effect`<br />
Module: `Types`<br />

## Types.MergeRight

Right-biased merge of two object types where keys from `Source` take
precedence over `Target` on conflict.

**When to use**

Use when you want right-biased merging where the second argument wins.

**Details**

The result is automatically simplified via `Simplify`.

**Example** (Right-biased merge)

```ts
import type { Types } from "effect"

type Result = Types.MergeRight<
  { a: number; b: number },
  { a: string; c: boolean }
>
// { a: string; b: number; c: boolean }
```

**See**

- `MergeLeft`
- `Simplify`

**Signature**

```ts
type MergeRight<Target, Source> = Simplify<
  & Source
  & {
    [Key in keyof Target as Key extends keyof Source ? never : Key]: Target[Key]
  }
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L405)

Since v2.0.0