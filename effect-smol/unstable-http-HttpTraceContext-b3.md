Package: `effect`<br />
Module: `HttpTraceContext`<br />

## HttpTraceContext.b3

Decodes an external span safely from the compact B3 `b3` header.

**Details**

Returns `Option.none` when the header is missing or does not contain trace and
span identifiers.

**Signature**

```ts
declare const b3: FromHeaders
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpTraceContext.ts#L110)

Since v4.0.0