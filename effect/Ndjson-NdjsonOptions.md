## NdjsonOptions

Represents a set of options which can be used to control how the newline
delimited JSON is handled.

**Signature**

```ts
export interface NdjsonOptions {
  /**
   * Whether or not the newline delimited JSON parser should ignore empty lines.
   *
   * Defaults to `false`.
   *
   * From the [newline delimited JSON spec](https://github.com/ndjson/ndjson-spec):
   * ```text
   * The parser MAY silently ignore empty lines, e.g. \n\n. This behavior MUST
   * be documented and SHOULD be configurable by the user of the parser.
   * ```
   *
   * @since 1.0.0
   */
  readonly ignoreEmptyLines?: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/Ndjson.ts#L48)

Since v1.0.0