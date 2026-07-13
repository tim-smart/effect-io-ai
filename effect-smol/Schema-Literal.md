Package: `effect`<br />
Module: `Schema`<br />

## Schema.Literal

Type-level representation returned by `Literal`.

**Signature**

```ts
export interface Literal<L extends SchemaAST.LiteralValue>
  extends Bottom<L, L, never, never, SchemaAST.Literal, Literal<L>>
{
  readonly literal: L
  transform<L2 extends SchemaAST.LiteralValue>(to: L2): decodeTo<Literal<L2>, Literal<L>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2631)

Since v3.10.0