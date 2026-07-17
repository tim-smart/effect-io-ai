Package: `effect`<br />
Module: `HttpTraceContext`<br />

## HttpTraceContext.fromHeaders

Decodes an external span safely from HTTP trace propagation headers.

**Details**

W3C `traceparent` is tried first, followed by compact B3 (`b3`) and then
multi-header B3 (`x-b3-*`).

**Signature**

```ts
declare const fromHeaders: (headers: Headers.Headers) => Option.Option<Tracer.ExternalSpan>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpTraceContext.ts#L63)

Since v4.0.0