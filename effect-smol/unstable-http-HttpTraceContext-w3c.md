Package: `effect`<br />
Module: `HttpTraceContext`<br />

## HttpTraceContext.w3c

Decodes an external span from the W3C `traceparent` header.

Only version `00` headers with valid trace and span identifiers are accepted.

**Signature**

```ts
declare const w3c: FromHeaders
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpTraceContext.ts#L135)

Since v4.0.0