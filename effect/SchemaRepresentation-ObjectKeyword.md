Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.ObjectKeyword

The `object` keyword type (matches any non-primitive).

**Signature**

```ts
export interface ObjectKeyword {
  readonly _tag: "ObjectKeyword"
  readonly annotations?: Schema.Annotations.Annotations | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaRepresentation.ts#L285)

Since v4.0.0