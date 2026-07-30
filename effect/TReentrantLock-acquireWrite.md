Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.acquireWrite

Acquires a write lock. The transaction will suspend until no other fibers
are holding read or write locks. Succeeds with the number of write locks
held by this fiber.

**Signature**

```ts
declare const acquireWrite: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L82)

Since v2.0.0