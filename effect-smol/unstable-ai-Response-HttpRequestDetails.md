Package: `effect`<br />
Module: `Response`<br />

## Response.HttpRequestDetails

Schema for HTTP request details associated with an AI response.

Captures comprehensive information about the HTTP request made to the
AI provider, enabling inspection of request metadata for debugging and
observability purposes.

**Example**

```ts
import type { Response } from "effect/unstable/ai"

const requestDetails: typeof Response.HttpRequestDetails.Type = {
  method: "POST",
  url: "https://api.openai.com/v1/responses",
  urlParams: [],
  hash: undefined,
  headers: { "Content-Type": "application/json" }
}
```

**Signature**

```ts
declare const HttpRequestDetails: Schema.Struct<{ readonly method: Schema.Literals<readonly ["GET", "POST", "PATCH", "PUT", "DELETE", "HEAD", "OPTIONS", "TRACE"]>; readonly url: Schema.String; readonly urlParams: Schema.$Array<Schema.Tuple<readonly [Schema.String, Schema.String]>>; readonly hash: Schema.UndefinedOr<Schema.String>; readonly headers: Schema.$Record<Schema.String, Schema.Union<readonly [Schema.String, Schema.Redacted<Schema.String>]>>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2115)

Since v1.0.0