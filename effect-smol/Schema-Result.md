Package: `effect`<br />
Module: `Schema`<br />

## Schema.Result

Schema for the `Result<A, E>` type, representing a computation that either
succeeds with `A` or fails with `E`.

**Signature**

```ts
export interface Result<A extends Top, E extends Top> extends
  declareConstructor<
    Result_.Result<A["Type"], E["Type"]>,
    Result_.Result<A["Encoded"], E["Encoded"]>,
    readonly [A, E],
    ResultIso<A, E>
  >
{
  readonly success: A
  readonly failure: E
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7086)

Since v4.0.0