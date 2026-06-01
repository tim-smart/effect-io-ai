Package: `effect`<br />
Module: `Types`<br />

## Types.ReasonOf

Extracts the `reason` type from an error that has a `reason` field.

**When to use**

Use when an error type stores nested sub-errors in a `reason` field and you
need that field's full union type as a standalone type.

**Details**

Returns `never` if `E` has no `reason` field.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L964)

Since v4.0.0