Package: `effect`<br />
Module: `Response`<br />

## Response.HttpResponseDetails

Schema for HTTP response details associated with an AI response.

Captures essential information about the HTTP response received from
the AI provider, including status codes and headers for debugging and
observability purposes.

**Example**

```ts
import type { Response } from "effect/unstable/ai"

const responseDetails: typeof Response.HttpResponseDetails.Type = {
  status: 200,
  headers: {
    "Content-Type": "application/json",
    "X-Request-Id": "req_abc123"
  }
}
```

**Signature**

```ts
declare const HttpResponseDetails: Schema.Struct<{ readonly status: Schema.Number; readonly headers: Schema.$Record<Schema.String, Schema.Union<readonly [Schema.String, Schema.Redacted<Schema.String>]>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2154)

Since v1.0.0