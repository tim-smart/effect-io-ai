Package: `effect`<br />
Module: `HttpTraceContext`<br />

## HttpTraceContext.xb3

Decodes an external span safely from multi-header B3 propagation headers.

**Details**

The decoder reads `x-b3-traceid`, `x-b3-spanid`, and optional `x-b3-sampled`
headers.

**Signature**

```ts
declare const xb3: FromHeaders
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpTraceContext.ts#L112)

Since v4.0.0