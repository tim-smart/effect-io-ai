## readLocks

Retrieves the total number of acquired read locks.

**Signature**

```ts
declare const readLocks: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L141)

Since v2.0.0