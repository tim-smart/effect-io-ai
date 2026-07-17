Package: `effect`<br />
Module: `Queue`<br />

## Queue.isEnqueue

Type guard to check if a value is an Enqueue.

**When to use**

Use to narrow an unknown value before calling queue operations that require
write-side access.

**Gotchas**

A full `Queue` also satisfies this guard because every queue includes the
enqueue side.

**See**

- `isQueue` for checking for a full read-write queue handle
- `isDequeue` for checking for the read side of a queue
- `asEnqueue` for narrowing an existing `Queue` to its write-only interface

**Signature**

```ts
declare const isEnqueue: <A = unknown, E = unknown>(u: unknown) => u is Enqueue<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L69)

Since v2.0.0