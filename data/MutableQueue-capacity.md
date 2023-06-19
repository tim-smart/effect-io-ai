# capacity

The **maximum** number of elements that a queue can hold.

**Note**: unbounded queues can still implement this interface with
`capacity = Infinity`.

Part of the `MutableQueue` module, imported from `@effect/data/MutableQueue`.

**Signature**

```ts
export declare const capacity: <A>(self: MutableQueue<A>) => number
```
