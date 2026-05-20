Package: `effect`<br />
Module: `HttpTraceContext`<br />

## HttpTraceContext.toHeaders

Encodes a span into HTTP trace propagation headers.

**Details**

The generated headers include both compact B3 (`b3`) and W3C `traceparent`
formats.

**Signature**

```ts
declare const toHeaders: (span: Tracer.Span) => Headers.Headers
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpTraceContext.ts#L52)

Since v4.0.0