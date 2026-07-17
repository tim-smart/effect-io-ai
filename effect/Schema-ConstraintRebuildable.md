Package: `effect`<br />
Module: `Schema`<br />

## Schema.ConstraintRebuildable

Lightweight structural constraint for APIs that need schema views and the
rebuilt schema type, but do not call the full schema protocol.

**When to use**

Use when an API needs to read `Rebuild` in addition to the schema views
exposed by `Constraint`, but does not call methods such as `annotate`,
`check`, `rebuild`, `make`, or `makeEffect`.

**Signature**

```ts
export interface ConstraintRebuildable extends Constraint {
  readonly "Rebuild": Constraint
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L766)

Since v4.0.0