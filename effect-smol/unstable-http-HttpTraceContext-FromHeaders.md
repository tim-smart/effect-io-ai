Package: `effect`<br />
Module: `HttpTraceContext`<br />

## HttpTraceContext.FromHeaders

Function type for decoding tracing headers into an external span.

**Details**

Returns `Option.none` when the headers do not contain a supported or valid trace
context.

**Signature**

```ts
export interface FromHeaders {
  (headers: Headers.Headers): Option.Option<Tracer.ExternalSpan>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpTraceContext.ts#L50)

Since v4.0.0