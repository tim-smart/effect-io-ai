Package: `effect`<br />
Module: `Schema`<br />

## Schema.Literals

Type-level representation returned by `Literals`.

**Signature**

```ts
export interface Literals<L extends ReadonlyArray<SchemaAST.LiteralValue>>
  extends Bottom<L[number], L[number], never, never, SchemaAST.Union<SchemaAST.Literal>, Literals<L>>
{
  readonly literals: L
  readonly members: { readonly [K in keyof L]: Literal<L[K]> }
  /**
   * Map over the members of the union.
   */
  mapMembers<To extends ReadonlyArray<Top>>(f: (members: this["members"]) => To): Union<Simplify<Readonly<To>>>

  pick<const L2 extends ReadonlyArray<L[number]>>(literals: L2): Literals<L2>

  transform<const L2 extends { readonly [I in keyof L]: SchemaAST.LiteralValue }>(
    to: L2
  ): Union<{ [I in keyof L]: decodeTo<Literal<L2[I]>, Literal<L[I]>> }>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L4433)

Since v4.0.0