Package: `effect`<br />
Module: `Schema`<br />

## Schema.Class

Type-level representation returned by `Class`.

**Signature**

```ts
export interface Class<Self, S extends Constraint & { readonly fields: Struct.Fields }, Inherited> extends
  BottomLazy<
    SchemaAST.Declaration,
    decodeTo<declareConstructor<Self, S["Encoded"], readonly [S], S["Iso"]>, S>,
    readonly [S],
    S["~type.mutability"],
    S["~type.optionality"],
    S["~type.constructor.default"],
    S["~encoded.mutability"],
    S["~encoded.optionality"]
  >
{
  readonly "Type": Self
  readonly "Encoded": S["Encoded"]
  readonly "DecodingServices": S["DecodingServices"]
  readonly "EncodingServices": S["EncodingServices"]
  readonly "~type.make.in": RequiredKeys<S["~type.make.in"]> extends never ? void | S["~type.make.in"]
    : S["~type.make.in"]
  readonly "~type.make": Self
  readonly "Iso": S["Iso"]
  new(
    ...args: {} extends S["~type.make.in"] ? [props?: S["~type.make.in"], options?: MakeOptions]
      : [props: S["~type.make.in"], options?: MakeOptions]
  ): S["Type"] & Inherited
  readonly identifier: string
  readonly fields: S["fields"]

  /**
   * Returns a new struct with the fields modified by the provided function.
   *
   * **Details**
   *
   * Options:
   *
   * - `unsafePreserveChecks` - if `true`, keep any `.check(...)` constraints
   *   that were attached to the original struct. Defaults to `false`.
   *
   *   **Warning**: This is an unsafe operation. Since `mapFields`
   *   transformations change the schema type, the original refinement functions
   *   may no longer be valid or safe to apply to the transformed schema. Only
   *   use this option if you have verified that your refinements remain correct
   *   after the transformation.
   */
  mapFields<To extends Struct.Fields>(
    f: (fields: S["fields"]) => To,
    options?: {
      readonly unsafePreserveChecks?: boolean | undefined
    } | undefined
  ): Struct<Simplify<Readonly<To>>>

  /**
   * Returns a function that creates a schema-backed subclass with this class's
   * fields plus additional fields.
   *
   * **When to use**
   *
   * Use when you need a subclass whose constructor validates both inherited
   * fields and newly added fields.
   *
   * **Details**
   *
   * The returned function accepts either a field map or a `Struct`. When you
   * pass a `Struct`, checks attached to that extension schema are preserved and
   * combined with checks from the base class schema.
   *
   * **Gotchas**
   *
   * Checks from a `Struct` argument are evaluated against the full subclass
   * value after inherited and extension fields are merged. Object-wide checks
   * such as `isMaxProperties` count inherited fields too.
   */
  extend<Extended = never, Static = {}, Brand = {}>(
    identifier: string
  ): {
    <NewFields extends Struct.Fields>(
      fields: NewFields,
      annotations?: Annotations.Declaration<Extended, readonly [Struct<Simplify<Assign<S["fields"], NewFields>>>]>
    ): [Extended] extends [never] ? MissingSelfGeneric<"Base.extend"> : InheritStaticMembers<
      Class<Extended, Struct<Simplify<Assign<S["fields"], NewFields>>>, Self & Brand>,
      Static
    >
    <Extension extends Struct<Struct.Fields>>(
      schema: Extension,
      annotations?: Annotations.Declaration<
        Extended,
        readonly [Struct<Simplify<Assign<S["fields"], Extension["fields"]>>>]
      >
    ): [Extended] extends [never] ? MissingSelfGeneric<"Base.extend"> : InheritStaticMembers<
      Class<Extended, Struct<Simplify<Assign<S["fields"], Extension["fields"]>>>, Self & Brand>,
      Static
    >
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L12505)

Since v3.10.0