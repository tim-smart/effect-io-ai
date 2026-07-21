Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetween

Validates that a number is within a specified range. The range boundaries can
be inclusive or exclusive based on the provided options.

**Details**

JSON Schema:

This check corresponds to `minimum`/`maximum` or `exclusiveMinimum`/`exclusiveMaximum`
constraints in JSON Schema, depending on the options provided.

Arbitrary:

When generating test data with fast-check, this applies `minimum` and
`maximum` constraints with optional `exclusiveMinimum` and
`exclusiveMaximum` flags to ensure generated numbers fall within the
specified range.

**Signature**

```ts
declare const isBetween: (options: { readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => SchemaAST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L7474)

Since v4.0.0