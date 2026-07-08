Package: `effect`<br />
Module: `Schema`<br />

## Schema.Redacted

Type-level representation returned by `Redacted`.

**Signature**

```ts
export interface Redacted<S extends Constraint> extends
  declareConstructor<
    Redacted_.Redacted<S["Type"]>,
    Redacted_.Redacted<S["Encoded"]>,
    readonly [S]
  >
{
  readonly "Rebuild": Redacted<S>
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L8921)

Since v3.10.0