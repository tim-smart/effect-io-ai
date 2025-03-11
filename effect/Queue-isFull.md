## isFull

Returns `true` if the `Queue` contains at least one element, `false`
otherwise.

**Signature**

```ts
declare const isFull: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L508)

Since v2.0.0