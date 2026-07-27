Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Declaration

A custom opaque declaration.

**Signature**

```ts
export interface Declaration {
  readonly _tag: "Declaration"
  readonly representation?: RepresentationAnnotation | undefined
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly typeParameters: ReadonlyArray<Representation>
  readonly checks: ReadonlyArray<Check>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L138)

Since v4.0.0