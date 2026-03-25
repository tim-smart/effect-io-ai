Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Bottom

Base annotations shared by all composite schema nodes. Extends
`Documentation` with error messages, branding, parse options, and
arbitrary generation hooks. `Declaration` and other annotation
interfaces build on top of this.

**Signature**

```ts
export interface Bottom<T, TypeParameters extends ReadonlyArray<Top>> extends Documentation<T> {
    /**
     * The message to use when the value is invalid.
     */
    readonly message?: string | undefined
    /**
     * The message to use when a key is unexpected.
     */
    readonly messageUnexpectedKey?: string | undefined
    readonly identifier?: string | undefined
    readonly parseOptions?: AST.ParseOptions | undefined
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11262)

Since v4.0.0