Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.BigInt

The `bigint` type with optional validation checks.

**See**

- `BigIntMeta`

**Signature**

```ts
export interface BigInt {
  readonly _tag: "BigInt"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly checks: ReadonlyArray<Check<BigIntMeta>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L288)

Since v4.0.0