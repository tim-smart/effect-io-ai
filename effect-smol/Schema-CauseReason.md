Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseReason

Schema for a single `Cause.Reason`, representing one reason a fiber may fail:
a typed error (`Fail`), an unexpected defect (`Die`), or an interrupt
(`Interrupt`).

**When to use**

Use as the schema type when generic code needs to retain the typed failure
and defect schemas for a single cause reason.

**Details**

The `error` schema validates typed failures and the `defect` schema validates
unexpected defects.

**See**

- `CauseReason` for constructing this schema type
- `CauseReasonIso` for the ISO shape of each cause reason

**Signature**

```ts
export interface CauseReason<E extends Top, D extends Top> extends
  declareConstructor<
    Cause_.Reason<E["Type"]>,
    Cause_.Reason<E["Encoded"]>,
    readonly [E, D],
    CauseReasonIso<E, D>
  >
{
  readonly "Rebuild": CauseReason<E, D>
  readonly error: E
  readonly defect: D
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8699)

Since v4.0.0