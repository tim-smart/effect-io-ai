Package: `effect`<br />
Module: `Schema`<br />

## Schema.UniqueSymbol

Type-level representation returned by `UniqueSymbol`.

**Signature**

```ts
export interface UniqueSymbol<sym extends symbol>
  extends Bottom<sym, sym, never, never, SchemaAST.UniqueSymbol, UniqueSymbol<sym>>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3154)

Since v4.0.0