Package: `effect`<br />
Module: `MutableQueue`<br />

## MutableQueue.poll

Dequeues an element from the queue.

Returns either an element from the queue, or the `def` param.

**Note**: if there is no meaningful default for your type, you can always
use `poll(MutableQueue.EmptyMutableQueue)`.

**Signature**

```ts
declare const poll: { <D>(def: D): <A>(self: MutableQueue<A>) => D | A; <A, D>(self: MutableQueue<A>, def: D): A | D; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MutableQueue.ts#L189)

Since v2.0.0