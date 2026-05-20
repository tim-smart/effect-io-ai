Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.attributes

String property key used to attach extra key/value metadata to an object
error report.

**Details**

Reporters receive these attributes alongside the error, making it easy to
include contextual information such as user IDs, request IDs, or other
domain-specific debugging data.

**Signature**

```ts
type attributes = "~effect/ErrorReporter/attributes"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L422)

Since v4.0.0