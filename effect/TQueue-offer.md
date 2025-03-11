## offer

Places one value in the queue.

**Signature**

```ts
declare const offer: { <A>(value: A): (self: TEnqueue<A>) => STM.STM<void>; <A>(self: TEnqueue<A>, value: A): STM.STM<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L273)

Since v2.0.0