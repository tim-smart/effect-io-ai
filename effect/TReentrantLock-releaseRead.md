## releaseRead

Releases a read lock held by this fiber. Succeeds with the outstanding
number of read locks held by this fiber.

**Signature**

```ts
declare const releaseRead: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L158)

Since v2.0.0