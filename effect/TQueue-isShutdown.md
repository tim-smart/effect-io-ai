## isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

**Signature**

```ts
declare const isShutdown: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L265)

Since v2.0.0