Package: `effect`<br />
Module: `Stream`<br />

## Stream.Variance

Variance markers for Stream type parameters.

**Signature**

```ts
export interface Variance<out A, out E, out R> {
  readonly [TypeId]: VarianceStruct<A, E, R>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L175)

Since v2.0.0