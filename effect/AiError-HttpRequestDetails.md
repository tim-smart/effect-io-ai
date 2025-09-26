Package: `@effect/ai`<br />
Module: `AiError`<br />

## AiError.HttpRequestDetails

Schema for HTTP request details used in error reporting.

Captures comprehensive information about HTTP requests that failed,
enabling detailed error analysis and debugging.

**Example**

```ts
import { AiError } from "@effect/ai"
import { Option } from "effect"

const requestDetails: typeof AiError.HttpRequestDetails.Type = {
  method: "POST",
  url: "https://api.openai.com/v1/completions",
  urlParams: [["model", "gpt-4"], ["stream", "false"]],
  hash: Option.some("#section1"),
  headers: { "Content-Type": "application/json" }
}
```

**Signature**

```ts
declare const HttpRequestDetails: Schema.Struct<{ method: Schema.Literal<["GET", "POST", "PATCH", "PUT", "DELETE", "HEAD", "OPTIONS"]>; url: typeof Schema.String; urlParams: Schema.Array$<Schema.Tuple2<typeof Schema.String, typeof Schema.String>>; hash: Schema.Option<typeof Schema.String>; headers: Schema.Record$<typeof Schema.String, typeof Schema.String>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiError.ts#L147)

Since v1.0.0