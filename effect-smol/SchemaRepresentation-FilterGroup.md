Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.FilterGroup

A group of validation constraints that are logically combined. Contains
at least one `Check`.

**See**

- `Check`

**Signature**

```ts
export interface FilterGroup<M> {
  readonly _tag: "FilterGroup"
  readonly annotations?: Schema.Annotations.Filter | undefined
  readonly checks: readonly [Check<M>, ...Array<Check<M>>]
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L553)

Since v4.0.0