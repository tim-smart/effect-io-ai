## Fiber.Descriptor

A record containing information about a `Fiber`.

**Signature**

```ts
export interface Descriptor {
    /**
     * The fiber's unique identifier.
     */
    readonly id: FiberId.FiberId
    /**
     * The status of the fiber.
     */
    readonly status: FiberStatus.FiberStatus
    /**
     * The set of fibers attempting to interrupt the fiber or its ancestors.
     */
    readonly interruptors: HashSet.HashSet<FiberId.FiberId>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L288)

Since v2.0.0