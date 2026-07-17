Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.ParseOptions

Options that control schema parsing, validation, transformation, and output behavior.

**Details**

Pass to `Schema.decodeUnknown`, `Schema.encode`, and related APIs to customize
error reporting, excess property handling, output key ordering, check
execution, and asynchronous parser concurrency.

- `errors` — `"first"` (default) stops at the first error; `"all"` collects
  every error.
- `onExcessProperty` — `"ignore"` (default) strips unknown object keys;
  `"error"` fails; `"preserve"` keeps them.
- `propertyOrder` — `"none"` (default) lets the system choose key order;
  `"original"` preserves input key order.
- `disableChecks` — skips validation checks while still applying defaults and
  transformations.
- `concurrency` — maximum number of async parse effects to run concurrently;
  defaults to `1`, or use `"unbounded"`.

**Signature**

```ts
export interface ParseOptions {
  /**
   * Controls how many parsing errors are reported.
   *
   * **Details**
   *
   * The default, `"first"`, stops at the first error. Set the option to `"all"`
   * to collect every parsing error, which can help with debugging or with
   * presenting more complete error messages to a user.
   *
   * @default "first"
   */
  readonly errors?: "first" | "all" | undefined

  /**
   * Controls how object parsing handles keys that are not declared by the schema.
   *
   * **Details**
   *
   * The default, `"ignore"`, strips unspecified properties from the output. Use
   * `"error"` to fail when an excess property is present, or `"preserve"` to
   * keep excess properties in the output.
   *
   * @default "ignore"
   */
  readonly onExcessProperty?: "ignore" | "error" | "preserve" | undefined

  /**
   * The `propertyOrder` option provides control over the order of object fields
   * in the output. This feature is useful when the sequence of keys is
   * important for the consuming processes or when maintaining the input order
   * enhances readability and usability.
   *
   * **Details**
   *
   * By default, the `propertyOrder` option is set to `"none"`. This means that
   * the internal system decides the order of keys to optimize parsing speed.
   *
   * Setting `propertyOrder` to `"original"` ensures that the keys are ordered
   * as they appear in the input during the decoding/encoding process.
   *
   * **Gotchas**
   *
   * The key order for `"none"` should not be considered stable and may change
   * in future updates without notice.
   *
   * @default "none"
   */
  readonly propertyOrder?: "none" | "original" | undefined

  /**
   * Whether to disable checks while still applying defaults and
   * transformations.
   */
  readonly disableChecks?: boolean | undefined

  /**
   * The maximum number of async effects to run concurrently.
   *
   * @default 1
   */
  readonly concurrency?: number | "unbounded" | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaAST.ts#L458)

Since v3.10.0