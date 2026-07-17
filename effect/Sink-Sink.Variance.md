Package: `effect`<br />
Module: `Sink`<br />

## Sink.Sink.Variance

Type-level variance marker for `Sink`.

**Details**

The result `A`, leftovers `L`, errors `E`, and services `R` are
covariant. The input type `In` is contravariant because values flow into
the sink.

**Signature**

```ts
export interface Variance<out A, in In, out L, out E, out R> {
    readonly [TypeId]: VarianceStruct<A, In, L, E, R>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L153)

Since v2.0.0