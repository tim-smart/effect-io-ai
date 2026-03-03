Package: `effect`<br />
Module: `Schema`<br />

## Schema.SchemaError

A `SchemaError` is returned when schema decoding or encoding fails.

This error extends `Data.TaggedError` and contains detailed information about
what went wrong during schema processing. The error includes an `issue` field
that provides comprehensive details about the validation failure, including
the path to the problematic data, expected types, and actual values.

**Signature**

```ts
declare class SchemaError { constructor(issue: Issue.Issue) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L451)

Since v4.0.0