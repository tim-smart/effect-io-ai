Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Filter

Annotations for filter schema nodes (created via `Schema.filter`). Extends
`Augment` with an optional error message, identifier, and metadata.
Filters are intentionally non-parametric to keep them covariant.

**Signature**

```ts
export interface Filter extends Augment {
    readonly message?: string | undefined
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
     * Example: `minLength` on an array is a structural filter.
     */
    readonly "~structural"?: boolean | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11330)

Since v4.0.0