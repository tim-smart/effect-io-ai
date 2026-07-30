Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.withWriteLock

Runs the specified workflow with a write lock.

**Signature**

```ts
declare const withWriteLock: { (self: TReentrantLock): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(effect: Effect.Effect<A, E, R>, self: TReentrantLock): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L197)

Since v2.0.0