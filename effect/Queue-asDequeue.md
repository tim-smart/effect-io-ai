Package: `effect`<br />
Module: `Queue`<br />

## Queue.asDequeue

Narrows a `Queue` to a `Dequeue`, exposing the consumer side of the queue.

**When to use**

Use to pass a queue to code that should consume values while keeping
producer-side operations out of that code's TypeScript type.

**Gotchas**

This is a type-level narrowing operation. It returns the same queue object
and does not create a runtime wrapper.

**See**

- `asEnqueue` for narrowing a queue to its producer side
- `Dequeue` for the consumer-side queue handle returned by this function

**Signature**

```ts
declare const asDequeue: <A, E>(self: Queue<A, E>) => Dequeue<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L133)

Since v4.0.0