Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.ParseOptions

Options that control parsing/validation behavior.

Pass to `Schema.decodeUnknown`, `Schema.encode`, etc. to customize error
reporting, excess property handling, and output key ordering.

- `errors` — `"first"` (default) stops at the first error; `"all"`
  collects every error.
- `onExcessProperty` — `"ignore"` (default) strips unknown keys;
  `"error"` fails; `"preserve"` keeps them.
- `propertyOrder` — `"none"` (default) lets the system choose key order;
  `"original"` preserves input key order.

**Signature**

```ts
export interface ParseOptions {
  /**
   * The `errors` option allows you to receive all parsing errors when
   * attempting to parse a value using a schema. By default only the first error
   * is returned, but by setting the `errors` option to `"all"`, you can receive
   * all errors that occurred during the parsing process. This can be useful for
   * debugging or for providing more comprehensive error messages to the user.
   *
   * default: "first"
   */
  readonly errors?: "first" | "all" | undefined

  /**
   * When using a `Objects` to parse a value, by default any properties that
   * are not specified in the schema will be stripped out from the output. This
   * is because the `Objects` is expecting a specific shape for the parsed
   * value, and any excess properties do not conform to that shape.
   *
   * However, you can use the `onExcessProperty` option (default value:
   * `"ignore"`) to trigger a parsing error. This can be particularly useful in
   * cases where you need to detect and handle potential errors or unexpected
   * values.
   *
   * If you want to allow excess properties to remain, you can use
   * `onExcessProperty` set to `"preserve"`.
   *
   * default: "ignore"
   */
  readonly onExcessProperty?: "ignore" | "error" | "preserve" | undefined

  /**
   * The `propertyOrder` option provides control over the order of object fields
   * in the output. This feature is useful when the sequence of keys is
   * important for the consuming processes or when maintaining the input order
   * enhances readability and usability.
   *
   * By default, the `propertyOrder` option is set to `"none"`. This means that
   * the internal system decides the order of keys to optimize parsing speed.
   * The order of keys in this mode should not be considered stable, and it's
   * recommended not to rely on key ordering as it may change in future updates
   * without notice.
   *
   * Setting `propertyOrder` to `"original"` ensures that the keys are ordered
   * as they appear in the input during the decoding/encoding process.
   *
   * default: "none"
   */
  readonly propertyOrder?: "none" | "original" | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L389)

Since v4.0.0