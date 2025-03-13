Package: `effect`<br />
Module: `Queue`<br />

## Queue.isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

**Signature**

```ts
declare const isShutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L516)

Since v2.0.0