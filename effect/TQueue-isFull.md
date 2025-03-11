## isFull

Returns `true` if the `TQueue` contains at least one element, `false`
otherwise.

**Signature**

```ts
declare const isFull: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L257)

Since v2.0.0