Package: `effect`<br />
Module: `Schema`<br />

## Schema.MakeOptions

Options for `makeUnsafe` and Class constructors.

When to use:
- Pass `disableValidation: true` to skip validation when you trust the data.
- Pass `parseOptions` to control error reporting behavior.

**See**

- `Bottom.makeUnsafe`

**Signature**

```ts
export interface MakeOptions {
  /**
   * The parse options to use for the schema.
   */
  readonly parseOptions?: AST.ParseOptions | undefined
  /**
   * Whether to disable validation for the schema.
   */
  readonly disableValidation?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L182)

Since v4.0.0