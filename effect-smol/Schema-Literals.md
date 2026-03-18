Package: `effect`<br />
Module: `Schema`<br />

## Schema.Literals

Represents a union schema of multiple literal values.

**See**

- `Literals` for the constructor function.

**Signature**

```ts
export interface Literals<L extends ReadonlyArray<AST.LiteralValue>>
  extends Bottom<L[number], L[number], never, never, AST.Union<AST.Literal>, Literals<L>>
{
  readonly "~rebuild.out": this
  readonly literals: L
  readonly members: { readonly [K in keyof L]: Literal<L[K]> }
  /**
   * Map over the members of the union.
   */
  mapMembers<To extends ReadonlyArray<Top>>(f: (members: this["members"]) => To): Union<Simplify<Readonly<To>>>

  pick<const L2 extends ReadonlyArray<L[number]>>(literals: L2): Literals<L2>

  transform<const L2 extends { readonly [I in keyof L]: AST.LiteralValue }>(
    to: L2
  ): Union<{ [I in keyof L]: decodeTo<Literal<L2[I]>, Literal<L[I]>> }>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3469)

Since v4.0.0