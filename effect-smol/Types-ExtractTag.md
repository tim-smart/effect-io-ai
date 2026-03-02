Package: `effect`<br />
Module: `Types`<br />

## Types.ExtractTag

Extracts a specific member of a tagged union by its `_tag` value.

- Use to narrow a union down to a single variant.
- Returns `never` if no member matches the tag.

**Example** (Extracting a variant)

```ts
import type { Types } from "effect"

type MyError =
  | { readonly _tag: "NotFound"; readonly id: string }
  | { readonly _tag: "Timeout"; readonly ms: number }

type TimeoutError = Types.ExtractTag<MyError, "Timeout">
// { readonly _tag: "Timeout"; readonly ms: number }
```

**See**

- `ExcludeTag`
- `Tags`

**Signature**

```ts
type ExtractTag<E, K> = E extends { readonly _tag: infer T } ? K extends T ? E : never : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L208)

Since v2.0.0