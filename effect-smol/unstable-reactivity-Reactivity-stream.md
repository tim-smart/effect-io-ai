Package: `effect`<br />
Module: `Reactivity`<br />

## Reactivity.stream

Runs an effect as a stream of query results tied to the supplied invalidation
keys.

**Details**

The effect runs initially and reruns whenever the keys are invalidated.

**Signature**

```ts
declare const stream: { (keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>): <A, E, R>(effect: Effect.Effect<A, E, R>) => Stream.Stream<A, E, Exclude<R, Scope.Scope> | Reactivity>; <A, E, R>(effect: Effect.Effect<A, E, R>, keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>): Stream.Stream<A, E, Exclude<R, Scope.Scope> | Reactivity>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reactivity.ts#L305)

Since v4.0.0