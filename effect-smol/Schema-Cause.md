Package: `effect`<br />
Module: `Schema`<br />

## Schema.Cause

Type-level representation returned by `Cause`.

**Signature**

```ts
export interface Cause<E extends Constraint, D extends Constraint> extends
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9270)

Since v3.10.0