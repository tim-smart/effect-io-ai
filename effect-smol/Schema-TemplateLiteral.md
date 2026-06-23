Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteral

Type-level representation returned by `TemplateLiteral`.

**Signature**

```ts
export interface TemplateLiteral<Parts extends TemplateLiteral.Parts> extends
  Bottom<
    TemplateLiteral.Encoded<Parts>,
    TemplateLiteral.Encoded<Parts>,
    never,
    never,
    SchemaAST.TemplateLiteral,
    TemplateLiteral<Parts>
  >
{
  readonly parts: Parts
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2684)

Since v3.10.0