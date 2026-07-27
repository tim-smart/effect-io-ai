Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.CheckRepresentationAnnotation

Open persistence identity and schema dependencies carried by opaque checks.

**Signature**

```ts
export interface CheckRepresentationAnnotation<S> extends RepresentationAnnotation {
  readonly schemas?: ReadonlyArray<S> | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L36)

Since v4.0.0