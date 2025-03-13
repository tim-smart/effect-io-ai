Package: `effect`<br />
Module: `Queue`<br />

## Queue.unsafeOffer

Places one value in the queue.

**Signature**

```ts
declare const unsafeOffer: { <A>(value: A): (self: Enqueue<A>) => boolean; <A>(self: Enqueue<A>, value: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Queue.ts#L554)

Since v2.0.0