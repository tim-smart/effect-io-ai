Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.withReadLock

Runs the specified workflow with a read lock.

**Signature**

```ts
declare const withReadLock: { (self: TReentrantLock): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(effect: Effect.Effect<A, E, R>, self: TReentrantLock): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L186)

Since v2.0.0