Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub.BackingSubscription

Low-level subscription interface that handles message polling for individual subscribers.

**Signature**

```ts
export interface BackingSubscription<out A> {
    isEmpty(): boolean
    size(): number
    poll(): A | MutableList.Empty
    pollUpTo(n: number): Array<A>
    unsubscribe(): void
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L121)

Since v4.0.0