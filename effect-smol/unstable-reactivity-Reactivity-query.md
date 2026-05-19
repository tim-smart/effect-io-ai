Package: `effect`<br />
Module: `Reactivity`<br />

## Reactivity.query

Runs an effect as a query tied to the supplied invalidation keys.

The returned queue receives the initial result and each later result after the
keys are invalidated. The registration is removed when the current scope closes.

**Signature**

```ts
declare const query: { (keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<Queue.Dequeue<A, E>, never, R | Scope.Scope | Reactivity>; <A, E, R>(effect: Effect.Effect<A, E, R>, keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>): Effect.Effect<Queue.Dequeue<A, E>, never, R | Scope.Scope | Reactivity>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reactivity.ts#L252)

Since v4.0.0