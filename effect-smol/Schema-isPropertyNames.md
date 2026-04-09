Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPropertyNames

Validates that all property names in an object satisfy the provided key
schema (encoded side of the schema).

**JSON Schema**

This check corresponds to the `propertyNames` constraint in JSON Schema.

**Signature**

```ts
declare const isPropertyNames: (keySchema: Top, annotations?: Annotations.Filter) => AST.Filter<object>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6683)

Since v4.0.0