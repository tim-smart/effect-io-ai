Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.HttpResponseDetails

Schema for HTTP response details used in error reporting.

Captures essential information about HTTP responses that caused errors,
including status codes and headers for debugging purposes.

**Example**

```ts
import { AiError } from "@effect/ai"

const responseDetails: typeof AiError.HttpResponseDetails.Type = {
  status: 429,
  headers: {
    "Content-Type": "application/json",
    "X-RateLimit-Remaining": "0",
    "Retry-After": "60"
  }
}
```

**Signature**

```ts
declare const HttpResponseDetails: Schema.Struct<{ status: typeof Schema.Number; headers: Schema.Record$<typeof Schema.String, typeof Schema.String>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L310)

Since v1.0.0