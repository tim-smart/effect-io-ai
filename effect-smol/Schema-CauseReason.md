Package: `effect`<br />
Module: `Schema`<br />

## Schema.CauseReason

Schema for a single `Cause.Reason<E>`, representing one reason a fiber may
fail: a typed error (`Fail`), an unexpected defect (`Die`), or an interrupt
(`Interrupt`).

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
  readonly error: E
  readonly defect: D
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7337)

Since v4.0.0