Package: `effect`<br />
Module: `TPriorityQueue`<br />

## TPriorityQueue.peekOption

Peeks at the first value in the queue without removing it, returning `None`
if there is not a value in the queue.

**Signature**

```ts
declare const peekOption: <A>(self: TPriorityQueue<A>) => STM.STM<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPriorityQueue.ts#L141)

Since v2.0.0