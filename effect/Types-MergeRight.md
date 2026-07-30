Package: `effect`<br />
Module: `Types`<br />

## Types.MergeRight

Merges two object where the keys of the right object take precedence in the case of a conflict.

**Example**

```ts
import type { Types } from "effect"
type MergeRight = Types.MergeRight<{ a: number, b: number; }, { a: string }> // { a: string; b: number; }
```

**Signature**

```ts
type MergeRight<Target, Source> = Simplify<
  & Source
  & {
    [Key in keyof Target as Key extends keyof Source ? never : Key]: Target[Key]
  }
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L201)

Since v2.0.0