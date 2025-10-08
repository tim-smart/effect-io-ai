Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.FinishReason

Represents the reason why a model finished generation of a response.

Possible finish reasons:
- `"stop"`: The model generated a stop sequence.
- `"length"`: The model exceeded its token budget.
- `"content-filter"`: The model generated content which violated a content filter.
- `"tool-calls"`: The model triggered a tool call.
- `"error"`: The model encountered an error.
- `"pause"`: The model requested to pause execution.
- `"other"`: The model stopped for a reason not supported by this protocol.
- `"unknown"`: The model did not specify a finish reason.

**Signature**

```ts
declare const FinishReason: Schema.Literal<["stop", "length", "content-filter", "tool-calls", "error", "pause", "other", "unknown"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2156)

Since v1.0.0