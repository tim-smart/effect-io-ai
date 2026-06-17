Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseReason

Type-level representation returned by `CauseReason`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8822)

Since v4.0.0