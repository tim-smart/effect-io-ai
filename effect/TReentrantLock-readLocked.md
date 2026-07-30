Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.readLocked

Determines if any fiber has a read lock.

**Signature**

```ts
declare const readLocked: (self: TReentrantLock) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L149)

Since v2.0.0