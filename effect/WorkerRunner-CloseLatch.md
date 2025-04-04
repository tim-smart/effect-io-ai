Package: `@effect/platform`<br />
Module: `WorkerRunner`<br />

## WorkerRunner.CloseLatch

The worker close latch is used by platform runners to signal that the worker
has been closed.

**Signature**

```ts
export interface CloseLatch {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/WorkerRunner.ts#L77)

Since v1.0.0