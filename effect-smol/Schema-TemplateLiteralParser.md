Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteralParser

Type-level representation returned by `TemplateLiteralParser`.

**Signature**

```ts
export interface TemplateLiteralParser<Parts extends TemplateLiteral.Parts> extends
  BottomLazy<
    SchemaAST.Arrays,
    TemplateLiteralParser<Parts>
  >
{
  readonly "Type": TemplateLiteralParser.Type<Parts>
  readonly "Encoded": TemplateLiteral.Encoded<Parts>
  readonly "DecodingServices": never
  readonly "EncodingServices": never
  readonly "~type.make.in": TemplateLiteralParser.Type<Parts>
  readonly "~type.make": TemplateLiteralParser.Type<Parts>
  readonly "Iso": TemplateLiteralParser.Type<Parts>
  readonly parts: Parts
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2765)

Since v3.10.0