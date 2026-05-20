Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateSomeAndGetEffect

Runs an effectful partial update while holding the ref's semaphore and
returns the resulting current value. `Option.some` stores and returns the new
value; `Option.none` returns the unchanged value.

**Signature**

```ts
declare const updateSomeAndGetEffect: { <A, R, E>(pf: (a: A) => Effect.Effect<Option.Option<A>, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<A, E, R>; <A, R, E>(self: SynchronizedRef<A>, pf: (a: A) => Effect.Effect<Option.Option<A>, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L466)

Since v2.0.0