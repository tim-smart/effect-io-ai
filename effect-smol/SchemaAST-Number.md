Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Number

AST node matching any `number` value (including `NaN`, `Infinity`,
`-Infinity`).

Default JSON serialization:
- Finite numbers are serialized as JSON numbers.
- `Infinity`, `-Infinity`, and `NaN` are serialized as JSON strings.

If the node has an `isFinite` or `isInt` check, the string fallback is
skipped since non-finite values cannot occur.

**See**

- `number`
- `isNumber`

**Signature**

```ts
declare class Number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1156)

Since v4.0.0