## fiberReadLocks

Retrieves the number of acquired read locks for this fiber.

**Signature**

```ts
declare const fiberReadLocks: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L90)

Since v2.0.0