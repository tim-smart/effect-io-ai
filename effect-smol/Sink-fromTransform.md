Package: `effect`<br />
Module: `Sink`<br />

## Sink.fromTransform

Creates a `Sink` from a low-level transform function.

**Details**

The transform receives the upstream pull of non-empty input arrays and the
active scope, and returns an effect that completes with the sink's `End`
value.

**Signature**

```ts
declare const fromTransform: <In, A, E, R, L = never>(transform: (upstream: Pull.Pull<NonEmptyReadonlyArray<In>, never, void>, scope: Scope.Scope) => Effect.Effect<End<A, L>, E, R>) => Sink<A, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L277)

Since v4.0.0