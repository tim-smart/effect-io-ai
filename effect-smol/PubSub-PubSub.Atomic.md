Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub.Atomic

Low-level atomic PubSub interface that handles the core message storage and retrieval.

**Signature**

```ts
export interface Atomic<in out A> {
    readonly capacity: number
    isEmpty(): boolean
    isFull(): boolean
    size(): number
    publish(value: A): boolean
    publishAll(elements: Iterable<A>): Array<A>
    slide(): void
    subscribe(): BackingSubscription<A>
    replayWindow(): ReplayWindow<A>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L103)

Since v4.0.0