Package: `effect`<br />
Module: `Schema`<br />

## Schema.isStringSymbol

Validates that a string has the `Symbol(description)` format used by Effect's
symbol string encoding.

**Details**

The check uses the pattern `^Symbol\((.*)\)$`. It is not a general test for
whether a string can be passed to JavaScript's `Symbol()` function.

**Signature**

```ts
declare const isStringSymbol: (annotations?: Annotations.Filter) => SchemaAST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6630)

Since v4.0.0