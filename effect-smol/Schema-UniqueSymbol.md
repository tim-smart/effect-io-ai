Package: `effect`<br />
Module: `Schema`<br />

## Schema.UniqueSymbol

Represents a schema for a specific unique symbol.

**See**

- `UniqueSymbol` for the constructor function.

**Signature**

```ts
export interface UniqueSymbol<sym extends symbol>
  extends Bottom<sym, sym, never, never, AST.UniqueSymbol, UniqueSymbol<sym>>
{
  readonly "~rebuild.out": this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2209)

Since v4.0.0