Package: `effect`<br />
Module: `Schema`<br />

## Schema.toFormatter

Derives a string formatter function from a schema. The formatter converts
a value to its human-readable string representation, recursing into structs,
arrays, and unions.

The optional `onBefore` hook lets you intercept specific AST nodes before
the default formatting logic runs.

**Signature**

```ts
declare const toFormatter: <T>(schema: Schema<T>, options?: { readonly onBefore?: ((ast: AST.AST, recur: (ast: AST.AST) => Formatter<any>) => Formatter<any> | undefined) | undefined; }) => Formatter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10746)

Since v4.0.0