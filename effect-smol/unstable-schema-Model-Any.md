Package: `effect`<br />
Module: `Model`<br />

## Model.Any

Base shape of a variant model schema, including its fields and the generated
database and JSON variant schemas.

**Signature**

```ts
type Any = Schema.Top & {
  readonly fields: Schema.Struct.Fields
  readonly insert: Schema.Top
  readonly update: Schema.Top
  readonly json: Schema.Top
  readonly jsonCreate: Schema.Top
  readonly jsonUpdate: Schema.Top
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Model.ts#L54)

Since v4.0.0