Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Bottom

Base annotations shared by all composite schema nodes. Extends
`Documentation` with error messages, branding, parse options, and
arbitrary generation hooks. `Declaration` and other annotation
interfaces build on top of this.

**Signature**

```ts
export interface Bottom<T, TypeParameters extends ReadonlyArray<Constraint>> extends Documentation<T> {
    /**
     * Complete message to use when this schema node reports an issue.
     *
     * **Details**
     *
     * This replaces the default message for matching issue types instead of
     * only changing the expected label. For a filter or refinement failure,
     * annotate the filter with `message` to replace the whole filter failure
     * message, or `expected` to keep the default
     * `Expected <expected>, got <actual>` shape.
     */
    readonly message?: string | undefined
    /**
     * The message to use when a key is unexpected.
     */
    readonly messageUnexpectedKey?: string | undefined
    /**
     * Stable identifier for this schema node.
     *
     * **Details**
     *
     * Identifiers are used by schema tooling, including JSON Schema
     * generation, to name references. The default formatter also uses
     * `identifier` as the expected label for type-level failures, such as
     * `Expected UserId, got null`.
     *
     * `identifier` does not name a failed filter or refinement. If the base
     * type matches and a filter fails, put `expected` or `message` on the
     * filter/refinement instead.
     */
    readonly identifier?: string | undefined
    readonly parseOptions?: SchemaAST.ParseOptions | undefined
    /**
     * Optional metadata used to identify or extend the filter with custom data.
     */
    readonly meta?: Meta | undefined
    /**
     * Accumulated brands when multiple brands are added with `Schema.brand`.
     */
    readonly brands?: ReadonlyArray<string> | undefined
    readonly toArbitrary?:
      | ToArbitrary.Declaration<T, TypeParameters>
      | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L14312)

Since v4.0.0