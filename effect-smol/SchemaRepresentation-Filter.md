Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Filter

A single validation constraint with typed metadata describing the check
(e.g. `{ _tag: "isMinLength", minLength: 3 }`).

**See**

- `Check`

**Signature**

```ts
export interface Filter<M> {
  readonly _tag: "Filter"
  readonly annotations?: Schema.Annotations.Filter | undefined
  readonly meta: M
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L538)

Since v4.0.0