Package: `effect`<br />
Module: `Schema`<br />

## Schema.Cause

Schema for `Cause` values, represented as an ordered collection of failure
reasons combining typed errors, defects, and interrupts.

**Details**
The `error` schema validates typed failures and the `defect` schema validates
unexpected defects.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8031)

Since v4.0.0