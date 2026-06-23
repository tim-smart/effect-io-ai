Package: `effect`<br />
Module: `Schema`<br />

## Schema.Exit

Type-level representation returned by `Exit`.

**Signature**

```ts
export interface Exit<A extends Constraint, E extends Constraint, D extends Constraint> extends
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9473)

Since v3.10.0