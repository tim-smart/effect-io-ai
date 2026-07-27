Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Filter

An opaque leaf check.

**Signature**

```ts
export interface Filter {
  readonly _tag: "Filter"
  readonly representation?: CheckRepresentationAnnotation<Representation> | undefined
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly aborted: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L438)

Since v4.0.0