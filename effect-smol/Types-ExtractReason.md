Package: `effect`<br />
Module: `Types`<br />

## Types.ExtractReason

Extracts a specific reason variant by its `_tag` from an error's `reason`
field.

- Use to narrow down to a single reason variant from a nested error type.
- Returns `never` if `E` has no matching reason variant.

**Example** (Extracting a reason variant)

```ts
import type { Types } from "effect"

type RateLimitError = { readonly _tag: "RateLimitError"; readonly retryAfter: number }
type QuotaError = { readonly _tag: "QuotaError"; readonly limit: number }
type ApiError = { readonly _tag: "ApiError"; readonly reason: RateLimitError | QuotaError }

type Result = Types.ExtractReason<ApiError, "RateLimitError">
// { readonly _tag: "RateLimitError"; readonly retryAfter: number }
```

**See**

- `ExcludeReason`
- `ReasonOf`
- `ReasonTags`

**Signature**

```ts
type ExtractReason<E, K> = E extends { readonly reason: infer R }
  ? R extends { readonly _tag: infer T } ? K extends T ? R : never
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L903)

Since v4.0.0