## takeOption

Takes a value from the queue, returning `None` if there is not a value in
the queue.

**Signature**

```ts
declare const takeOption: <A>(self: TPriorityQueue<A>) => STM.STM<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L196)

Since v2.0.0