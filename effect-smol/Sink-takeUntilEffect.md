Package: `effect`<br />
Module: `Sink`<br />

## Sink.takeUntilEffect

Effectfully collects input elements until the predicate returns `true`,
including the matching element in the result.

If the predicate effect fails, the sink fails with the same error.

**Signature**

```ts
declare const takeUntilEffect: <In, E, R>(predicate: (input: In) => Effect.Effect<boolean, E, R>) => Sink<Array<In>, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1562)

Since v4.0.0