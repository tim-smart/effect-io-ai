Package: `effect`<br />
Module: `Schema`<br />

## Schema.BottomLazyWithoutNew

Lazy `BottomWithoutNew` variant for schema implementations that
compute their public views on demand.

**When to use**

Use as the base for lazy schema interfaces that provide a specialized
construct signature.

**Details**

The laziness is purely type-level; runtime behavior is unchanged.
`BottomLazyWithoutNew` keeps the structural operations inherited from
`BottomWithoutNew`, but erases the expensive schema views to
`unknown`. Concrete schema interfaces can then redeclare the precise views
they expose. This keeps wide schemas such as `Struct` and `Union` cheaper when
generic code reads a single view, while preserving their exact public types.

**See**

- `BottomWithoutNew` for the fully parameterized schema interface when every
view must be supplied directly.

**Signature**

```ts
export interface BottomLazyWithoutNew<
  out Ast extends SchemaAST.AST,
  out Rebuild extends Top,
  in out TypeParameters extends ReadonlyArray<Constraint> = readonly [],
  out TypeMutability extends Mutability = "readonly",
  out TypeOptionality extends Optionality = "required",
  out TypeConstructorDefault extends ConstructorDefault = "no-default",
  out EncodedMutability extends Mutability = "readonly",
  out EncodedOptionality extends Optionality = "required"
> extends
  BottomWithoutNew<
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L336)

Since v4.0.0