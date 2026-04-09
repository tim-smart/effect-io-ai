Package: `effect`<br />
Module: `Schema`<br />

## Schema.isPattern

Validates that a string matches the specified regular expression pattern.

**JSON Schema**

This check corresponds to the `pattern` constraint in JSON Schema.

**Arbitrary**

When generating test data with fast-check, this applies a `patterns`
constraint to ensure generated strings match the specified RegExp pattern.

**Signature**

```ts
declare const isPattern: (regExp: globalThis.RegExp, annotations?: Annotations.Filter) => AST.Filter<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4925)

Since v4.0.0