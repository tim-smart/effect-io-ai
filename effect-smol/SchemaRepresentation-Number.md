Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Number

The `number` type with optional validation checks.

**Details**

`checks` holds number-specific constraints, such as int, finite, min, max,
multipleOf, and between checks.

**See**

- `NumberMeta`

**Signature**

```ts
export interface Number {
  readonly _tag: "Number"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly checks: ReadonlyArray<Check<NumberMeta>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L286)

Since v4.0.0