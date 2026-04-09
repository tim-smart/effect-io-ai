Package: `effect`<br />
Module: `Schema`<br />

## Schema.MakeOptions

Options for `makeEffect`, `make`, and Class constructors.

When to use:
- Pass `disableChecks: true` to skip validation when you trust the data.
- Pass `parseOptions` to control error reporting behavior.

**See**

- `Bottom.makeEffect`
- `Bottom.make`

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
  readonly disableChecks?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L184)

Since v4.0.0