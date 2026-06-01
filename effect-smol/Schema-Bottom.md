Package: `effect`<br />
Module: `Schema`<br />

## Schema.Bottom

The fully-parameterized base interface for all schemas. Exposes all 14 type
parameters controlling type inference, mutability, optionality, services,
and transformation behavior.

**When to use**

Use when you are writing advanced generic schema utilities or performing schema
  introspection.
- In user code, prefer `Schema`, `Codec`, `Decoder`, or
  `Encoder` instead.

**See**

- `Top` — the existential "any schema" type (erased type params)
- `Schema` — tracks only the decoded Type
- `Codec` — tracks Type + Encoded

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
  in out TypeParameters extends ReadonlyArray<Top> = readonly [],
  out TypeMake = TypeMakeIn,
  out TypeMutability extends Mutability = "readonly",
  out TypeOptionality extends Optionality = "required",
  out TypeConstructorDefault extends ConstructorDefault = "no-default",
  out EncodedMutability extends Mutability = "readonly",
  out EncodedOptionality extends Optionality = "required"
> extends Pipeable.Pipeable {
  readonly [TypeId]: typeof TypeId

  readonly "ast": Ast
  readonly "Rebuild": Rebuild
  readonly "~type.parameters": TypeParameters

  readonly "Type": T
  readonly "Encoded": E
  readonly "DecodingServices": RD
  readonly "EncodingServices": RE

  readonly "~type.make.in": TypeMakeIn
  readonly "~type.make": TypeMake // useful to type the `refine` interface
  readonly "~type.constructor.default": TypeConstructorDefault
  readonly "Iso": Iso

  readonly "~type.mutability": TypeMutability
  readonly "~type.optionality": TypeOptionality
  readonly "~encoded.mutability": EncodedMutability
  readonly "~encoded.optionality": EncodedOptionality

  annotate(annotations: Annotations.Bottom<this["Type"], this["~type.parameters"]>): this["Rebuild"]
  annotateKey(annotations: Annotations.Key<this["Type"]>): this["Rebuild"]
  check(...checks: readonly [SchemaAST.Check<this["Type"]>, ...Array<SchemaAST.Check<this["Type"]>>]): this["Rebuild"]
  rebuild(ast: this["ast"]): this["Rebuild"]
  /**
   * Constructs a value from the make input representation synchronously.
   *
   * **When to use**
   *
   * Use when constructor input is trusted or when validation failure
   * should abort with a thrown `Error`.
   *
   * **Details**
   *
   * Applies constructor defaults and type-side validation according to
   * `MakeOptions`.
   *
   * **Gotchas**
   *
   * Throws an `Error` with the schema issue in its `cause` when validation
   * fails.
   *
   * @see {@link Bottom.makeOption} — construct synchronously and discard validation details
   * @see {@link Bottom.makeEffect} — construct through `Effect` when validation failure should stay in the error channel
   */
  make(input: this["~type.make.in"], options?: MakeOptions): this["Type"]
  /**
   * Constructs a value from the make input representation, returning `Option.none`
   * when validation fails.
   *
   * **When to use**
   *
   * Use when you only need to know whether construction succeeds
   * and do not need validation details.
   *
   * **Details**
   *
   * Applies constructor defaults and type-side validation according to
   * `MakeOptions`.
   *
   * @see {@link Bottom.make} — construct synchronously when validation failure should throw
   * @see {@link Bottom.makeEffect} — construct through `Effect` when validation details should stay in the error channel
   */
  makeOption(input: this["~type.make.in"], options?: MakeOptions): Option_.Option<this["Type"]>
  /**
   * Constructs a value from the make input representation, returning validation
   * failures in the `Effect` error channel.
   *
   * **When to use**
   *
   * Use when constructor input may fail validation and you want to
   * compose that failure with other `Effect` operations instead of throwing.
   *
   * @see {@link Bottom.make} — construct synchronously when validation failure should throw
   * @see {@link Bottom.makeOption} — construct synchronously and discard validation details
   */
  makeEffect(input: this["~type.make.in"], options?: MakeOptions): Effect.Effect<this["Type"], SchemaError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L218)

Since v4.0.0