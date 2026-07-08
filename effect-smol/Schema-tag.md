Package: `effect`<br />
Module: `Schema`<br />

## Schema.tag

Type-level representation returned by `tag`.

**Signature**

```ts
export interface tag<Tag extends SchemaAST.LiteralValue> extends withConstructorDefault<Literal<Tag>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5941)

Since v3.10.0