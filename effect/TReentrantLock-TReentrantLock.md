Package: `effect`<br />
Module: `TReentrantLock`<br />

## TReentrantLock.TReentrantLock

A `TReentrantLock` is a reentrant read/write lock. Multiple readers may all
concurrently acquire read locks. Only one writer is allowed to acquire a
write lock at any given time. Read locks may be upgraded into write locks. A
fiber that has a write lock may acquire other write locks or read locks.

The two primary methods of this structure are `readLock`, which acquires a
read lock in a scoped context, and `writeLock`, which acquires a write lock
in a scoped context.

Although located in the STM package, there is no need for locks within STM
transactions. However, this lock can be quite useful in effectful code, to
provide consistent read/write access to mutable state; and being in STM
allows this structure to be composed into more complicated concurrent
structures that are consumed from effectful code.

**Signature**

```ts
export interface TReentrantLock extends TReentrantLock.Proto {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TReentrantLock.ts#L41)

Since v2.0.0