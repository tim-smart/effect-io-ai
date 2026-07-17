Package: `effect`<br />
Module: `Queue`<br />

## Queue.isDequeue

Type guard to check if a value is a Dequeue.

**When to use**

Use to narrow an unknown value before passing it to read-side queue
operations.

**See**

- `Dequeue` for the read-side queue handle checked by this guard
- `isQueue` for checking for a full read-write queue handle
- `isEnqueue` for checking for the write side of a queue
- `asDequeue` for narrowing an existing `Queue` to its read-only interface

**Signature**

```ts
declare const isDequeue: <A = unknown, E = unknown>(u: unknown) => u is Dequeue<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L89)

Since v2.0.0