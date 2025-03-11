## offer

Offers an element to the queue.

Returns whether the enqueue was successful or not.

**Signature**

```ts
declare const offer: { <A>(self: MutableQueue<A>, value: A): boolean; <A>(value: A): (self: MutableQueue<A>) => boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableQueue.ts#L136)

Since v2.0.0