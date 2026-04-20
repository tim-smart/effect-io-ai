Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteralParser

Represents a schema that validates strings matching a template literal pattern and decodes
them into a tuple of typed values, one per schema part.

**See**

- `TemplateLiteralParser` for the constructor function.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1966)

Since v4.0.0