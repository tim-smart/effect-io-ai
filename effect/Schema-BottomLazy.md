Package: `effect`<br />
Module: `Schema`<br />

## Schema.BottomLazy

Lazy `Bottom` variant for schema implementations that compute their public
views on demand.

**When to use**

Use as an implementation base for schema interfaces that must expose
`Bottom` behavior without forcing TypeScript to eagerly evaluate expensive
`Type`, `Encoded`, or service views.

**Details**

The laziness is purely type-level; runtime behavior is unchanged.
`BottomLazy` keeps the structural operations inherited from `Bottom`, but
erases the expensive schema views to `unknown`. Concrete schema interfaces can
then redeclare the precise views they expose. This keeps wide schemas such as
`Struct` and `Union` cheaper when generic code reads a single view, while
preserving their exact public types.

**See**

- `Bottom` for the fully parameterized schema interface when every
view must be supplied directly.

**Signature**

```ts
export interface BottomLazy<
  out Ast extends SchemaAST.AST,
  out Rebuild extends Top,
  in out TypeParameters extends ReadonlyArray<Constraint> = readonly [],
  out TypeMutability extends Mutability = "readonly",
  out TypeOptionality extends Optionality = "required",
  out TypeConstructorDefault extends ConstructorDefault = "no-default",
  out EncodedMutability extends Mutability = "readonly",
  out EncodedOptionality extends Optionality = "required"
> extends
  Bottom<
    unknown,
    unknown,
    unknown,
    unknown,
    Ast,
    Rebuild,
    unknown,
    unknown,
    TypeParameters,
    unknown,
    TypeMutability,
    TypeOptionality,
    TypeConstructorDefault,
    EncodedMutability,
    EncodedOptionality
  >
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L276)

Since v4.0.0