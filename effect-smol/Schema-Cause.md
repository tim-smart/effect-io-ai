Package: `effect`<br />
Module: `Schema`<br />

## Schema.Cause

Schema for `Cause` values, represented as an ordered collection of failure
reasons combining typed errors, defects, and interrupts.

**When to use**

Use as the schema type returned by `Cause` when generic code needs to retain
the typed failure and defect schemas.

**Details**

The `error` schema validates typed failures and the `defect` schema validates
unexpected defects.

**See**

- `Cause` for constructing this schema type
- `CauseIso` for the ordered array representation used by the schema ISO

**Signature**

```ts
export interface Cause<E extends Top, D extends Top> extends
  declareConstructor<
    Cause_.Cause<E["Type"]>,
    Cause_.Cause<E["Encoded"]>,
    readonly [E, D],
    CauseIso<E, D>
  >
{
  readonly "Rebuild": Cause<E, D>
  readonly error: E
  readonly defect: D
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8649)

Since v3.10.0