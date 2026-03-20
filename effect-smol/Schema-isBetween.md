Package: `effect`<br />
Module: `Schema`<br />

## Schema.isBetween

Validates that a number is within a specified range. The range boundaries can
be inclusive or exclusive based on the provided options.

**JSON Schema**

This check corresponds to `minimum`/`maximum` or `exclusiveMinimum`/`exclusiveMaximum`
constraints in JSON Schema, depending on the options provided.

**Arbitrary**

When generating test data with fast-check, this applies `min` and `max`
constraints with optional `minExcluded` and `maxExcluded` flags to ensure
generated numbers fall within the specified range.

**Signature**

```ts
declare const isBetween: (options: { readonly minimum: number; readonly maximum: number; readonly exclusiveMinimum?: boolean | undefined; readonly exclusiveMaximum?: boolean | undefined; }, annotations?: Annotations.Filter) => AST.Filter<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5764)

Since v4.0.0