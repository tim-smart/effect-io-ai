Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteralParser

Type-level representation returned by `TemplateLiteralParser`.

**Signature**

```ts
export interface TemplateLiteralParser<Parts extends TemplateLiteral.Parts> extends
  Bottom<
    TemplateLiteralParser.Type<Parts>,
    TemplateLiteral.Encoded<Parts>,
    never,
    never,
    AST.Arrays,
    TemplateLiteralParser<Parts>
  >
{
  readonly parts: Parts
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2373)

Since v3.10.0