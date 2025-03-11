## writeLocked

Determines if a write lock is held by some fiber.

**Signature**

```ts
declare const writeLocked: (self: TReentrantLock) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L216)

Since v2.0.0