Package: `effect`<br />
Module: `Schema`<br />

## Schema.Literal

Type-level representation returned by `Literal`.

**Signature**

```ts
export interface Literal<L extends AST.LiteralValue> extends Bottom<L, L, never, never, AST.Literal, Literal<L>> {
  readonly literal: L
  transform<L2 extends AST.LiteralValue>(to: L2): decodeTo<Literal<L2>, Literal<L>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2197)

Since v3.10.0