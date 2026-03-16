Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.PubSub.ReplayWindow

Interface for accessing replay buffer contents for late subscribers.

**Signature**

```ts
export interface ReplayWindow<A> {
    take(): A | undefined
    takeN(n: number): Array<A>
    takeAll(): Array<A>
    readonly remaining: number
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L145)

Since v4.0.0