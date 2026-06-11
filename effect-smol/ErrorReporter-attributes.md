Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.attributes

Defines the string property key used to attach extra key/value metadata to an object
error report.

**When to use**

Use to type the property key that attaches metadata to object error reports.

**Details**

Reporters receive these attributes alongside the error, making it easy to
include contextual information such as user IDs, request IDs, or other
domain-specific debugging data.

**Signature**

```ts
type attributes = "~effect/ErrorReporter/attributes"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L473)

Since v4.0.0