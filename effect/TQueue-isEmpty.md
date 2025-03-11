## isEmpty

Returns `true` if the `TQueue` contains zero elements, `false` otherwise.

**Signature**

```ts
declare const isEmpty: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TQueue.ts#L248)

Since v2.0.0