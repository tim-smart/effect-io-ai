## writeLocks

Computes the number of write locks held by fibers.

**Signature**

```ts
declare const writeLocks: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L224)

Since v2.0.0