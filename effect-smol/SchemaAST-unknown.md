Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.unknown

Provides the singleton `Unknown` AST instance.

**When to use**

Use when you need the reusable AST singleton for a schema node that accepts
every value while keeping parsed values opaque.

**See**

- `any` for the singleton that accepts every value as `any`

**Signature**

```ts
declare const unknown: Unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L1011)

Since v4.0.0