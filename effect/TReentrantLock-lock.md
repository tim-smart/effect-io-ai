Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.lock

Just a convenience method for applications that only need reentrant locks,
without needing a distinction between readers / writers.

See `TReentrantLock.writeLock`.

**Signature**

```ts
declare const lock: (self: TReentrantLock) => Effect.Effect<number, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L109)

Since v2.0.0