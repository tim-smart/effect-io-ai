Package: `effect`<br />
Module: `MutableQueue`<br />

## MutableQueue.capacity

The **maximum** number of elements that a queue can hold.

**Note**: unbounded queues can still implement this interface with
`capacity = Infinity`.

**Signature**

```ts
declare const capacity: <A>(self: MutableQueue<A>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableQueue.ts#L127)

Since v2.0.0