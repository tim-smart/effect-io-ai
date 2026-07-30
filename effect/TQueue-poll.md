Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.poll

Takes a single element from the queue, returning `None` if the queue is
empty.

**Signature**

```ts
declare const poll: <A>(self: TDequeue<A>) => STM.STM<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L326)

Since v2.0.0