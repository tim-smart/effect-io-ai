Package: `effect`<br />
Module: `Schema`<br />

## Schema.Exit

Schema for `Exit<A, E>`, representing the result of a fiber execution —
either a success with value `A` or a failure with `Cause<E>`.

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
  readonly value: A
  readonly error: E
  readonly defect: D
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7737)

Since v4.0.0