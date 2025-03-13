Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.fiberWriteLocks

Retrieves the number of acquired write locks for this fiber.

**Signature**

```ts
declare const fiberWriteLocks: (self: TReentrantLock) => STM.STM<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L98)

Since v2.0.0