Package: `effect`<br />
Module: `Schema`<br />

## Schema.Redacted

Schema for the `Redacted<A>` type, providing secure handling of sensitive
values. The inner value is hidden from error messages.

**Signature**

```ts
export interface Redacted<S extends Top> extends
  declareConstructor<
    Redacted_.Redacted<S["Type"]>,
    Redacted_.Redacted<S["Encoded"]>,
    readonly [S]
  >
{
  readonly "~rebuild.out": Redacted<S>
  readonly value: S
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7222)

Since v4.0.0