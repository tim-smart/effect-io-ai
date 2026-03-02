Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Literal

A specific literal value (`string`, `number`, `boolean`, or `bigint`).

**Signature**

```ts
export interface Literal {
  readonly _tag: "Literal"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly literal: string | number | boolean | bigint
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L311)

Since v4.0.0