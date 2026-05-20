Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteral.SchemaPart

Constraint for schema parts that can appear inside a `TemplateLiteral`.

**Details**

The schema's encoded value must be a `string`, `number`, or `bigint` so it can
be converted into a template literal string segment.

**Signature**

```ts
export interface SchemaPart extends Top {
    readonly Encoded: string | number | bigint
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2013)

Since v4.0.0