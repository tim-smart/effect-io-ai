## takeOrInterrupt

Attempts to take a message from the queue in the same way Queue.take does.
If the result is a PoisonPill, it will interrupt the effect.

**Signature**

```ts
declare const takeOrInterrupt: <Req>(dequeue: Queue.Dequeue<Req | PoisonPill>) => Effect.Effect<Req>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/PoisonPill.ts#L98)

Since v1.0.0