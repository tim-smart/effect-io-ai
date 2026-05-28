Package: `effect`<br />
Module: `Types`<br />

## Types.NarrowReason

Narrows a specific reason variant by its `_tag` from an error's `reason`
field.

**When to use**

Use to preserve the original error shape while narrowing its nested reason
field to the matching variant.

**Details**

Returns `never` if `E` has no matching reason variant.

**Example** (Narrowing a reason variant)

```ts
import type { Types } from "effect"

type RateLimitError = { readonly _tag: "RateLimitError"; readonly retryAfter: number }
type QuotaError = { readonly _tag: "QuotaError"; readonly limit: number }
type ApiError = { readonly _tag: "ApiError"; readonly reason: RateLimitError | QuotaError }

type Result = Types.NarrowReason<ApiError, "RateLimitError">
// ApiError & { readonly reason: { readonly _tag: "RateLimitError"; readonly retryAfter: number } }
```

**See**

- `ExcludeReason`
- `ReasonOf`
- `ReasonTags`

**Signature**

```ts
type NarrowReason<E, K> = E extends { readonly reason: infer R }
  ? R extends { readonly _tag: infer T } ? K extends T ? E & { readonly reason: R } : never
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L1100)

Since v4.0.0