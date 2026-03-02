Package: `effect`<br />
Module: `Types`<br />

## Types.OmitReason

Narrows an error's `reason` field to exclude a specific reason variant by
its `_tag`.

- Use to narrow the error to only the remaining reason variants after
  excluding the matched one.
- Returns `never` if `E` has no `reason` field or no remaining variants.

**Example** (Omitting a reason variant)

```ts
import type { Types } from "effect"

type RateLimitError = { readonly _tag: "RateLimitError"; readonly retryAfter: number }
type QuotaError = { readonly _tag: "QuotaError"; readonly limit: number }
type ApiError = { readonly _tag: "ApiError"; readonly reason: RateLimitError | QuotaError }

type Result = Types.OmitReason<ApiError, "RateLimitError">
// ApiError & { readonly reason: { readonly _tag: "QuotaError"; readonly limit: number } }
```

**See**

- `NarrowReason`
- `ExcludeReason`
- `ReasonOf`
- `ReasonTags`

**Signature**

```ts
type OmitReason<E, K> = E extends { readonly reason: infer R }
  ? R extends { readonly _tag: infer T } ? K extends T ? never : E & { readonly reason: R }
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L991)

Since v4.0.0