Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.UniqueSymbol

A specific unique `symbol` value.

**Signature**

```ts
export interface UniqueSymbol {
  readonly _tag: "UniqueSymbol"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly symbol: symbol
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L323)

Since v4.0.0