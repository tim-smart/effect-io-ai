Package: `effect`<br />
Module: `Reactivity`<br />

## Reactivity.mutation

Wraps an effect so the supplied keys are invalidated after the effect succeeds.

**Gotchas**

If the effect fails, the keys are not invalidated.

**Signature**

```ts
declare const mutation: { (keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R | Reactivity>; <A, E, R>(effect: Effect.Effect<A, E, R>, keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>): Effect.Effect<A, E, R | Reactivity>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reactivity.ts#L228)

Since v4.0.0