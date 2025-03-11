## acquireRead

Acquires a read lock. The transaction will suspend until no other fiber is
holding a write lock. Succeeds with the number of read locks held by this
fiber.

**Signature**

```ts
declare const acquireRead: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L72)

Since v2.0.0