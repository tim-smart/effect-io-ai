Package: `effect`<br />
Module: `Sink`<br />

## Sink.takeWhileEffect

Collects input elements effectfully while the predicate succeeds.

**Details**

The first input for which the predicate returns `false` is consumed and
excluded from the result. Any later elements from the same pulled array are
returned as leftovers.

**Signature**

```ts
declare const takeWhileEffect: <In, E, R>(predicate: (input: In) => Effect.Effect<boolean, E, R>) => Sink<Array<In>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1653)

Since v4.0.0