Package: `effect`<br />
Module: `AiError`<br />

## AiError.reasonFromHttpStatus

Maps HTTP status codes to semantic error reasons.

**When to use**

Use as the base mapping when provider packages translate HTTP status codes into
provider-specific error reasons.

**Example** (Mapping an HTTP status to a reason)

```ts
import { AiError } from "effect/unstable/ai"

const reason = AiError.reasonFromHttpStatus({
  status: 429,
  body: { error: "Rate limit exceeded" }
})

console.log(reason._tag) // "RateLimitError"
```

**Signature**

```ts
declare const reasonFromHttpStatus: (params: { readonly status: number; readonly body?: unknown; readonly http?: typeof HttpContext.Type; readonly metadata?: typeof ProviderMetadata.Type; readonly description?: string | undefined; }) => AiErrorReason
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1670)

Since v4.0.0