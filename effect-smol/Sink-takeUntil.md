Package: `effect`<br />
Module: `Sink`<br />

## Sink.takeUntil

Collects input elements until the predicate returns `true`, including the
matching element in the result.

**Signature**

```ts
declare const takeUntil: <In>(predicate: Predicate<In>) => Sink<Array<In>, In, In>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1716)

Since v4.0.0