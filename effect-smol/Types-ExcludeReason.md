Package: `effect`<br />
Module: `Types`<br />

## Types.ExcludeReason

Excludes a specific reason variant by its `_tag` from an error's `reason`
field.

- Use to remove a handled reason variant from an error's reason union.
- Returns `never` if `E` has no `reason` field.

**Example** (Excluding a reason variant)

```ts
import type { Types } from "effect"

type RateLimitError = { readonly _tag: "RateLimitError"; readonly retryAfter: number }
type QuotaError = { readonly _tag: "QuotaError"; readonly limit: number }
type ApiError = { readonly _tag: "ApiError"; readonly reason: RateLimitError | QuotaError }

type Result = Types.ExcludeReason<ApiError, "RateLimitError">
// { readonly _tag: "QuotaError"; readonly limit: number }
```

**See**

- `ExtractReason`
- `ReasonOf`
- `ReasonTags`

**Signature**

```ts
type ExcludeReason<E, K> = E extends { readonly reason: infer R }
  ? Exclude<R, { readonly _tag: K }>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L1001)

Since v4.0.0