Package: `effect`<br />
Module: `Schema`<br />

## Schema.Result

Type-level representation returned by `Result`.

**Signature**

```ts
export interface Result<A extends Constraint, E extends Constraint> extends
  declareConstructor<
    Result_.Result<A["Type"], E["Type"]>,
    Result_.Result<A["Encoded"], E["Encoded"]>,
    readonly [A, E],
    ResultIso<A, E>
  >
{
  readonly "Rebuild": Result<A, E>
  readonly success: A
  readonly failure: E
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8813)

Since v4.0.0