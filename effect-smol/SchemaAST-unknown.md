Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.unknown

Singleton `Unknown` AST instance.

**When to use**

Use when you need the reusable AST singleton for an `unknown` schema node
that accepts every value while keeping the parsed type as `unknown`.

**See**

- `any` for the singleton that accepts every value as `any`

**Signature**

```ts
declare const unknown: Unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L999)

Since v4.0.0