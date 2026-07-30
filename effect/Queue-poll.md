Package: `effect`<br />
Module: `Queue`<br />

## Queue.poll

Returns the first value in the `Queue` as a `Some<A>`, or `None` if the queue
is empty.

**Signature**

```ts
declare const poll: <A>(self: Dequeue<A>) => Effect.Effect<Option.Option<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L589)

Since v2.0.0