Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.Value

Extracts the full variant type (including `_tag`) for a specific tag.

**Example** (extracting a variant type)

```ts
import type { Data } from "effect"

type Result =
  | { readonly _tag: "Ok"; readonly value: number }
  | { readonly _tag: "Err"; readonly error: string }

type OkVariant = Data.TaggedEnum.Value<Result, "Ok">
// { readonly _tag: "Ok"; readonly value: number }
```

**See**

- `Args` — extracts fields without `_tag`

**Signature**

```ts
type Value<A, K> = Extract<A, { readonly _tag: K }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L380)

Since v2.0.0