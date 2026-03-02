Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Arrays

An array or tuple type.

- `elements` are the fixed positional elements (tuple prefix). Each may be
  optional.
- `rest` are the variadic tail types. A single-element `rest` with no
  `elements` produces a plain `Array<T>`.
- `checks` holds array-specific constraints (minLength, maxLength, unique, etc.).

**See**

- `Element`
- `ArraysMeta`

**Signature**

```ts
export interface Arrays {
  readonly _tag: "Arrays"
  readonly annotations?: Schema.Annotations.Annotations | undefined
  readonly elements: ReadonlyArray<Element>
  readonly rest: ReadonlyArray<Representation>
  readonly checks: ReadonlyArray<Check<ArraysMeta>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L380)

Since v4.0.0