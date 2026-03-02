Package: `effect`<br />
Module: `Types`<br />

## Types.ReasonOf

Extracts the `reason` type from an error that has a `reason` field.

- Use with the nested error pattern where errors wrap sub-errors in a
  `reason` field.
- Returns `never` if `E` has no `reason` field.

**Example** (Extracting reason types)

```ts
import type { Types } from "effect"

type RateLimitError = { readonly _tag: "RateLimitError"; readonly retryAfter: number }
type QuotaError = { readonly _tag: "QuotaError"; readonly limit: number }
type ApiError = { readonly _tag: "ApiError"; readonly reason: RateLimitError | QuotaError }

type Reasons = Types.ReasonOf<ApiError>
// RateLimitError | QuotaError
```

**See**

- `ReasonTags`
- `ExtractReason`
- `ExcludeReason`

**Signature**

```ts
type ReasonOf<E> = E extends { readonly reason: infer R } ? R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L868)

Since v4.0.0