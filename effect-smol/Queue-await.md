Package: `effect`<br />
Module: `Queue`<br />

## Queue.await

Wait for the queue to be done.

**Signature**

```ts
declare const await: <A, E>(self: Dequeue<A, E>) => Effect<void, Exclude<E, Done>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Queue.ts#L1355)

Since v4.0.0