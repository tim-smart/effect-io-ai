Package: `effect`<br />
Module: `Schema`<br />

## Schema.toFormatter

Derives a string formatter function from a schema. The formatter converts
a value to its human-readable string representation, recursing into structs,
arrays, and unions.

**Details**

The optional `onBefore` hook lets you intercept specific AST nodes before
the default formatting logic runs.

**Signature**

```ts
declare const toFormatter: <S extends Constraint>(schema: S, options?: { readonly onBefore?: ((ast: SchemaAST.AST, recur: (ast: SchemaAST.AST) => Formatter<any>) => Formatter<any> | undefined) | undefined; }) => Formatter<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13135)

Since v4.0.0