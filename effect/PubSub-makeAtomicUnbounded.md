Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.makeAtomicUnbounded

Creates an unbounded atomic PubSub implementation with optional replay buffer.

**When to use**

Use to create the low-level storage layer for a custom `PubSub` whose active
subscribers may retain an unbounded number of pending messages.

**Gotchas**

Messages published while subscribers are active can be retained without a
capacity limit until those subscribers take them or unsubscribe.

**See**

- `makeAtomicBounded` for a bounded atomic implementation that enforces capacity
- `make` for wrapping an atomic implementation with a delivery strategy
- `unbounded` for the high-level effectful constructor for unbounded `PubSub` values

**Signature**

```ts
declare const makeAtomicUnbounded: <A>(options?: { readonly replay?: number | undefined; }) => PubSub.Atomic<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L546)

Since v4.0.0