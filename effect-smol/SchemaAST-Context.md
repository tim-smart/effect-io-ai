Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Context

Per-property metadata attached to AST nodes via `Base.context`.

Tracks whether a property key is optional, mutable, has a constructor
default, or carries key-level annotations. Typically set by helpers like
`optionalKey` and `Schema.mutableKey`.

- `isOptional` — the property key may be absent from the input.
- `isMutable` — the property is `readonly` when `false`.
- `defaultValue` — an `Encoding` applied during construction to
  supply missing values.
- `annotations` — key-level annotations (e.g. description of the key
  itself).

**See**

- `optionalKey`
- `isOptional`

**Signature**

```ts
declare class Context { constructor(
    isOptional: boolean,
    isMutable: boolean,
    /** Used for constructor default values (e.g. `withConstructorDefault` API) */
    defaultValue: Encoding | undefined = undefined,
    annotations: Schema.Annotations.Key<unknown> | undefined = undefined
  ) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L475)

Since v4.0.0