Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndUpdateSomeEffect

Runs an effectful partial update atomically while holding the ref's semaphore
and returns the previous value. `Option.some` updates the ref; `Option.none`
leaves it unchanged.

**When to use**

Use to return the previous value while running an effectful conditional
update.

**See**

- `getAndUpdateSome` for the pure conditional variant
- `updateSomeEffect` for effectful conditional updates without returning the previous value

**Signature**

```ts
declare const getAndUpdateSomeEffect: { <A, R, E>(pf: (a: A) => Effect.Effect<Option.Option<A>, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<A, E, R>; <A, R, E>(self: SynchronizedRef<A>, pf: (a: A) => Effect.Effect<Option.Option<A>, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L257)

Since v2.0.0