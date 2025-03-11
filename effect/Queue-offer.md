## offer

Places one value in the queue.

**Signature**

```ts
declare const offer: { <A>(value: A): (self: Enqueue<A>) => Effect.Effect<boolean>; <A>(self: Enqueue<A>, value: A): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L543)

Since v2.0.0