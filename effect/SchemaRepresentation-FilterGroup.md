Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.FilterGroup

A non-empty group of checks.

**Signature**

```ts
export interface FilterGroup {
  readonly _tag: "FilterGroup"
  readonly representation?: CheckRepresentationAnnotation<Representation> | undefined
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly checks: readonly [Check, ...Array<Check>]
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L451)

Since v4.0.0