Package: `effect`<br />
Module: `Schema`<br />

## Schema.Bottom

Fully-parameterized base interface for schemas that can be extended directly
by TypeScript classes.

**When to use**

Use as the base for concrete schema interfaces whose runtime values support
`class ... extends schema`.

**Details**

Extends `BottomWithoutNew` with a construct signature that accepts `never`. The
signature enables class extension without making ordinary schemas directly
constructible.

**See**

- `BottomWithoutNew` for the schema protocol without a construct signature

**Signature**

```ts
export interface Bottom<
  out T,
  out E,
  out RD,
  out RE,
  out Ast extends SchemaAST.AST,
  out Rebuild extends Top,
  out TypeMakeIn = T,
  out Iso = T,
  in out TypeParameters extends ReadonlyArray<Constraint> = readonly [],
  out TypeMake = TypeMakeIn,
  out TypeMutability extends Mutability = "readonly",
  out TypeOptionality extends Optionality = "required",
  out TypeConstructorDefault extends ConstructorDefault = "no-default",
  out EncodedMutability extends Mutability = "readonly",
  out EncodedOptionality extends Optionality = "required"
> extends
  BottomWithoutNew<
    T,
    E,
    RD,
    RE,
    Ast,
    Rebuild,
    TypeMakeIn,
    Iso,
    TypeParameters,
    TypeMake,
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L274)

Since v4.0.0