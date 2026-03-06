Package: `effect`<br />
Module: `Types`<br />

## Types.ReasonTags

Extracts the `_tag` values from the `reason` type of an error.

- Shorthand for `Tags<ReasonOf<E>>`.
- Returns `never` if `E` has no `reason` field or the reason has no `_tag`.

**Example** (Getting reason tags)

```ts
import type { Types } from "effect"

type RateLimitError = { readonly _tag: "RateLimitError"; readonly retryAfter: number }
type QuotaError = { readonly _tag: "QuotaError"; readonly limit: number }
type ApiError = { readonly _tag: "ApiError"; readonly reason: RateLimitError | QuotaError }

type Result = Types.ReasonTags<ApiError>
// "RateLimitError" | "QuotaError"
```

**See**

- `ReasonOf`
- `ExtractReason`

**Signature**

```ts
type ReasonTags<E> = E extends { readonly reason: { readonly _tag: string } } ? E["reason"]["_tag"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L873)

Since v4.0.0