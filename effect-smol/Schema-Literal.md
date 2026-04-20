Package: `effect`<br />
Module: `Schema`<br />

## Schema.Literal

Represents a schema for a single literal value.

**See**

- `Literal` for the constructor function.

**Signature**

```ts
export interface Literal<L extends AST.LiteralValue> extends Bottom<L, L, never, never, AST.Literal, Literal<L>> {
  readonly literal: L
  transform<L2 extends AST.LiteralValue>(to: L2): decodeTo<Literal<L2>, Literal<L>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1822)

Since v4.0.0