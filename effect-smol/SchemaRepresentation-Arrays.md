Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Arrays

An array or tuple type.

**Details**

`elements` are the fixed positional elements, or tuple prefix, and each may
be optional. `rest` contains the variadic tail types; a single-element
`rest` with no `elements` produces a plain `Array<T>`. `checks` holds
array-specific constraints, such as minLength, maxLength, and unique checks.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L404)

Since v4.0.0