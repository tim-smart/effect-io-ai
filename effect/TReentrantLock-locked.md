## locked

Determines if any fiber has a read or write lock.

**Signature**

```ts
declare const locked: (self: TReentrantLock) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L117)

Since v2.0.0