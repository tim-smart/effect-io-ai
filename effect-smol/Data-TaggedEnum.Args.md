Package: `effect`<br />
Module: `Data`<br />

## Data.TaggedEnum.Args

Extracts the constructor argument type for a specific variant of a tagged
union.

Returns `void` if the variant has no fields beyond `_tag`.

**Example** (extracting variant args)

```ts
import type { Data } from "effect"

type Result =
  | { readonly _tag: "Ok"; readonly value: number }
  | { readonly _tag: "Err"; readonly error: string }

type OkArgs = Data.TaggedEnum.Args<Result, "Ok">
// { readonly value: number }

type ErrArgs = Data.TaggedEnum.Args<Result, "Err">
// { readonly error: string }
```

**See**

- `Value` — extracts the full variant type (including `_tag`)

**Signature**

```ts
type Args<A, K, E> = {
    readonly [K in keyof E as K extends "_tag" ? never : K]: E[K]
  } extends infer T ? {} extends T ? void
    : T
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Data.ts#L350)

Since v2.0.0