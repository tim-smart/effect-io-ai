Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.BackPressureStrategy

Represents the back-pressure strategy for bounded `PubSub` values.

**When to use**

Use to preserve every message for current subscribers when a bounded custom
`PubSub` should make publishers wait for capacity instead of dropping or
evicting messages.

**Details**

Publishers wait when the `PubSub` is at capacity, so all current subscribers
can receive every published message.

**Gotchas**

A slow subscriber can slow down publishers and other subscribers.

**See**

- `bounded` for creating bounded PubSubs with back pressure by default
- `DroppingStrategy` for dropping new messages when capacity is full
- `SlidingStrategy` for evicting old messages when capacity is full

**Signature**

```ts
declare class BackPressureStrategy<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L2421)

Since v4.0.0