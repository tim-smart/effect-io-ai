Package: `effect`<br />
Module: `AiError`<br />

## AiError.reasonFromHttpStatus

Maps HTTP status codes to semantic error reasons.

Provider packages can use this as a base for provider-specific mapping.

**Example**

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
declare const reasonFromHttpStatus: (params: { readonly status: number; readonly body?: unknown; readonly http?: typeof HttpContext.Type; readonly metadata?: typeof ProviderMetadata.Type; }) => AiErrorReason
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AiError.ts#L1528)

Since v1.0.0