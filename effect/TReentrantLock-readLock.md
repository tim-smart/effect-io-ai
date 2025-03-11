## readLock

Obtains a read lock in a scoped context.

**Signature**

```ts
declare const readLock: (self: TReentrantLock) => Effect.Effect<number, never, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L133)

Since v2.0.0