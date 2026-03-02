Package: `effect`<br />
Module: `Stream`<br />

## Stream.VarianceStruct

Structural encoding of Stream type parameter variance.

**Signature**

```ts
export interface VarianceStruct<out A, out E, out R> {
  readonly _A: Covariant<A>
  readonly _E: Covariant<E>
  readonly _R: Covariant<R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L175)

Since v2.0.0