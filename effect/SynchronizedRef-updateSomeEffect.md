Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateSomeEffect

Runs an effectful partial update while holding the ref's semaphore.
`Option.some` stores the new value; `Option.none` leaves the ref unchanged.

**When to use**

Use to run an effectful conditional `SynchronizedRef` update without
returning a value.

**See**

- `updateSome` for the pure conditional variant
- `updateEffect` for effectful updates that always store a new value

**Signature**

```ts
declare const updateSomeEffect: { <A, R, E>(pf: (a: A) => Effect.Effect<Option.Option<A>, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<void, E, R>; <A, R, E>(self: SynchronizedRef<A>, pf: (a: A) => Effect.Effect<Option.Option<A>, E, R>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SynchronizedRef.ts#L592)

Since v2.0.0