Package: `effect`<br />
Module: `Schema`<br />

## Schema.Cause

Schema for `Cause<E>`, an ordered collection of reasons a fiber failed,
combining typed errors, defects, and interrupts.

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
  readonly error: E
  readonly defect: D
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7406)

Since v4.0.0