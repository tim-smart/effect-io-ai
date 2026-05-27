Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Filter

Annotations for filter schema nodes (created via `Schema.filter`). Extends
`Augment` with an optional error message, identifier, and metadata.
Filters are intentionally non-parametric to keep them covariant.

**Signature**

```ts
export interface Filter extends Augment {
    /**
     * Complete message to use when this filter or refinement fails.
     *
     * **Details**
     *
     * The default formatter checks filter annotations in this order:
     * `message`, then `expected`, then `<filter>`.
     */
    readonly message?: string | undefined
    /**
     * Stable identifier for the schema after this filter is attached.
     *
     * **Details**
     *
     * This can affect schema tooling such as JSON Schema generation and
     * type-level failures before the filter runs, but it does not name the
     * failed filter itself. For filter failure messages, use `expected` or
     * `message`.
     */
    readonly identifier?: string | undefined
    /**
     * Optional metadata used to identify or extend the filter with custom data.
     */
    readonly meta?: Meta | undefined
    readonly toArbitraryConstraint?:
      | ToArbitrary.Constraint
      | undefined
    /**
     * Marks the filter as *structural*, meaning it applies to the shape or
     * structure of the container (e.g., array length, object keys) rather than
     * the contents.
     *
     * **Details**
     *
     * Example: `minLength` on an array is a structural filter.
     */
    readonly "~structural"?: boolean | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L13478)

Since v3.10.0