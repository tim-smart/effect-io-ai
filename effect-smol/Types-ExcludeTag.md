Package: `effect`<br />
Module: `Types`<br />

## Types.ExcludeTag

Excludes members of a tagged union by their `_tag` value.

**When to use**

Use to remove tagged-union members whose `_tag` matches a specific value in
type-level code.

**Details**

Non-tagged members of the union are preserved.

**Example** (Removing a variant)

```ts
import type { Types } from "effect"

type MyError =
  | { readonly _tag: "NotFound"; readonly id: string }
  | { readonly _tag: "Timeout"; readonly ms: number }
  | string

type WithoutTimeout = Types.ExcludeTag<MyError, "Timeout">
// { readonly _tag: "NotFound"; readonly id: string } | string
```

**See**

- `ExtractTag`
- `Tags`

**Signature**

```ts
type ExcludeTag<E, K> = Exclude<E, { readonly _tag: K }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L154)

Since v2.0.0