Package: `effect`<br />
Module: `Schema`<br />

## Schema.MakeOptions

Options for `makeEffect`, `make`, and Class constructors.

**When to use**

Use when passing `disableChecks: true` to skip validation when you trust the data.
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
  readonly parseOptions?: SchemaAST.ParseOptions | undefined
  /**
   * Whether to disable validation for the schema.
   */
  readonly disableChecks?: boolean | undefined

  /** @internal */
  readonly "~payload"?: {
    readonly token: unknown
    readonly value: unknown
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L116)

Since v3.13.4