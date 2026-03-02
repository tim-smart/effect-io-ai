Package: `effect`<br />
Module: `Types`<br />

## Types.MergeRight

Merges two object types where keys from `Source` take precedence over
`Target` on conflict.

- Use when you want right-biased merging (second argument wins).
- The result is automatically simplified via `Simplify`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L395)

Since v2.0.0