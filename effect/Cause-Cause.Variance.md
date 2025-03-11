## Cause.Variance

This interface is used internally to manage the type variance of `Cause`.

**Signature**

```ts
export interface Variance<out E> {
    readonly [CauseTypeId]: {
      readonly _E: Covariant<E>
    }
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L271)

Since v2.0.0