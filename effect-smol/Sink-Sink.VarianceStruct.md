Package: `effect`<br />
Module: `Sink`<br />

## Sink.Sink.VarianceStruct

Structural encoding used by `Sink.Variance` to record each `Sink` type
parameter's variance.

**Details**

`_A`, `_L`, `_E`, and `_R` are covariant markers. `_In` is a
contravariant marker.

**Signature**

```ts
export interface VarianceStruct<out A, in In, out L, out E, out R> {
    _A: Types.Covariant<A>
    _In: Types.Contravariant<In>
    _L: Types.Covariant<L>
    _E: Types.Covariant<E>
    _R: Types.Covariant<R>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L191)

Since v2.0.0