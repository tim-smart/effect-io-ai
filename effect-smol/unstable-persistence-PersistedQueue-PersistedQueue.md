Package: `effect`<br />
Module: `PersistedQueue`<br />

## PersistedQueue.PersistedQueue

Persistent queue of schema-encoded values.

**Details**

`offer` enqueues values by id, and `take` processes one value at a time,
marking it complete on success or retrying it until the maximum attempts is
reached.

**Signature**

```ts
export interface PersistedQueue<in out A, out R = never> {
  readonly [TypeId]: TypeId

  /**
   * Adds an element to the queue and returns the id of the enqueued element.
   *
   * **Details**
   *
   * If an element with the same id already exists in the queue, it will not be
   * added again.
   */
  readonly offer: (value: A, options?: {
    readonly id: string | undefined
  }) => Effect.Effect<string, PersistedQueueError | Schema.SchemaError, R>

  /**
   * Takes an element from the queue, waiting until one is available when the
   * queue is empty.
   *
   * **Details**
   *
   * If the returned effect succeeds, the element is marked as processed;
   * otherwise it will be retried according to the provided options. By default,
   * max attempts is set to 10.
   */
  readonly take: <XA, XE, XR>(
    f: (value: A, metadata: {
      readonly id: string
      readonly attempts: number
    }) => Effect.Effect<XA, XE, XR>,
    options?: {
      readonly maxAttempts?: number | undefined
    }
  ) => Effect.Effect<XA, XE | PersistedQueueError | Schema.SchemaError, R | XR>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PersistedQueue.ts#L62)

Since v4.0.0