## writeLock

Obtains a write lock in a scoped context.

**Signature**

```ts
declare const writeLock: (self: TReentrantLock) => Effect.Effect<number, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L208)

Since v2.0.0