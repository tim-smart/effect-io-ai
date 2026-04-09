Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteral

Represents a schema that validates strings matching a template literal pattern.
The encoded type is a string formed by concatenating the parts.

**See**

- `TemplateLiteral` for the constructor function.

**Signature**

```ts
export interface TemplateLiteral<Parts extends TemplateLiteral.Parts> extends
  Bottom<
    TemplateLiteral.Encoded<Parts>,
    TemplateLiteral.Encoded<Parts>,
    never,
    never,
    AST.TemplateLiteral,
    TemplateLiteral<Parts>
  >
{
  readonly parts: Parts
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1874)

Since v4.0.0