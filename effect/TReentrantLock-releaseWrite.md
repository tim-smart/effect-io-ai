Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.releaseWrite

Releases a write lock held by this fiber. Succeeds with the outstanding
number of write locks held by this fiber.

**Signature**

```ts
declare const releaseWrite: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L167)

Since v2.0.0