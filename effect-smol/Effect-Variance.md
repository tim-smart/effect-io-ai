Package: `effect`<br />
Module: `Effect`<br />

## Effect.Variance

Variance interface for Effect, encoding the type parameters' variance.

**Signature**

```ts
export interface Variance<A, E, R> {
  _A: Covariant<A>
  _E: Covariant<E>
  _R: Covariant<R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L267)

Since v2.0.0