Package: `effect`<br />
Module: `TQueue`<br />

## TQueue.peekOption

Views the next element in the queue without removing it, returning `None`
if the queue is empty.

**Signature**

```ts
declare const peekOption: <A>(self: TDequeue<A>) => STM.STM<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L317)

Since v2.0.0