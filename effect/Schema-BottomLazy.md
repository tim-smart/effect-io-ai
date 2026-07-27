Package: `effect`<br />
Module: `Schema`<br />

## Schema.BottomLazy

Lazy `Bottom` variant for schemas that can be extended directly by TypeScript
classes.

**When to use**

Use as the base for concrete lazy schema interfaces whose runtime values
support `class ... extends schema`.

**Details**

Extends `BottomLazyWithoutNew` with a construct signature that accepts `never`.
The signature enables class extension without making ordinary schemas
directly constructible.

**See**

- `BottomLazyWithoutNew` for the lazy schema protocol without a construct signature

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
  BottomLazyWithoutNew<
    Ast,
    Rebuild,
    TypeParameters,
    TypeMutability,
    TypeOptionality,
    TypeConstructorDefault,
    EncodedMutability,
    EncodedOptionality
  >
{
  new(_: never): {}
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L385)

Since v4.0.0