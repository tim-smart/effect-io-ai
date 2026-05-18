Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.Redacted.Variance

Type-level variance marker for `Redacted`.

This interface records the covariant value type carried by a `Redacted`
value and is not normally referenced directly by users.

**Signature**

```ts
export interface Variance<out A> {
    readonly [TypeId]: {
      readonly _A: Covariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Redacted.ts#L76)

Since v3.3.0