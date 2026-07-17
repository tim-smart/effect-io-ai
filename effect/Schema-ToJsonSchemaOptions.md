Package: `effect`<br />
Module: `Schema`<br />

## Schema.ToJsonSchemaOptions

Options for `toJsonSchemaDocument`.

**Signature**

```ts
export interface ToJsonSchemaOptions {
  /**
   * Controls how additional properties are handled while resolving the JSON
   * schema.
   *
   * **Details**
   *
   * Possible values include:
   * - `false`: Disallow additional properties (default)
   * - `true`: Allow additional properties
   * - `JsonSchema`: Use the provided JSON Schema for additional properties
   */
  readonly additionalProperties?: boolean | JsonSchema.JsonSchema | undefined
  /**
   * Controls whether to generate descriptions for checks (if the user has not
   * provided them) based on the `expected` annotation of the check.
   */
  readonly generateDescriptions?: boolean | undefined
  /**
   * A predicate that controls which additional annotation keys (beyond the
   * standard JSON Schema keys) are included in the generated output.
   *
   * **When to use**
   *
   * Use when you need to include non-standard annotation keys in the generated
   * JSON Schema, such as Monaco Editor properties (`markdownDescription`,
   * `defaultSnippets`) or vendor extensions (`x-*`).
   *
   * **Details**
   *
   * Standard JSON Schema keys (`title`, `description`, `default`, `examples`,
   * `readOnly`, `writeOnly`, `format`, `contentEncoding`, `contentMediaType`,
   * `contentSchema`) are always included. This predicate is checked for any
   * *other* annotation key.
   *
   * **Gotchas**
   *
   * Prefer whitelisting the custom annotation keys you want to emit instead of
   * using a broad predicate such as `() => true`, because broad predicates can
   * include Effect-specific annotations that are preserved for internal schema
   * generation.
   *
   * **Example** (Including custom annotations)
   *
   * ```ts
   * import { Schema } from "effect"
   *
   * const schema = Schema.String.annotate({
   *   description: "A name",
   *   markdownDescription: "The **name** field"
   * })
   *
   * const doc = Schema.toJsonSchemaDocument(schema, {
   *   includeAnnotationKey: (key) =>
   *     key === "markdownDescription" || key.startsWith("x-")
   * })
   *
   * console.log(doc.schema)
   * // {
   * //   type: "string",
   * //   description: "A name",
   * //   markdownDescription: "The **name** field"
   * // }
   * ```
   */
  readonly includeAnnotationKey?: ((key: string) => boolean) | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L13339)

Since v4.0.0