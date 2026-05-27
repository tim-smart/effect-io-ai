Package: `effect`<br />
Module: `Schema`<br />

## Schema.Exit

Schema for `Exit` values, representing either a success with value `A` or a
failure with a `Cause` containing typed errors and defects.

**Signature**

```ts
export interface Exit<A extends Top, E extends Top, D extends Top> extends
  declareConstructor<
    Exit_.Exit<A["Type"], E["Type"]>,
    Exit_.Exit<A["Encoded"], E["Encoded"]>,
    readonly [A, E, D],
    ExitIso<A, E, D>
  >
{
  readonly "Rebuild": Exit<A, E, D>
  readonly value: A
  readonly error: E
  readonly defect: D
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8921)

Since v3.10.0