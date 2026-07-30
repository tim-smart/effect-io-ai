Package: `effect`<br />
Module: `Sink`<br />

## Sink.unwrapScopedWith

Constructs a `Sink` from a function which receives a `Scope` and returns
an effect that will result in a `Sink` if successful.

**Signature**

```ts
declare const unwrapScopedWith: <A, In, L, E, R>(f: (scope: Scope.Scope) => Effect.Effect<Sink<A, In, L, E, R>, E, R>) => Sink<A, In, L, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1371)

Since v3.11.0