Package: `effect`<br />
Module: `Schema`<br />

## Schema.MakeOptions

Configuration options for the `makeUnsafe` method, providing control over
parsing behavior and validation.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L86)

Since v4.0.0