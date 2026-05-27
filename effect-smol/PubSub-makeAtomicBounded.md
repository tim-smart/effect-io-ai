Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.makeAtomicBounded

Creates a bounded atomic PubSub implementation with optional replay buffer.

**When to use**

Use to provide bounded message storage when building a custom `PubSub` with
`make` and an explicit delivery strategy.

**Details**

Pass either a capacity number or an options object with `capacity` and
optional `replay`. A positive `replay` value enables a replay buffer for late
subscribers, and fractional replay sizes are rounded up.

**Gotchas**

The capacity must be greater than zero; invalid capacities throw
synchronously before an atomic implementation is created.

**See**

- `make` for constructing a `PubSub` from an atomic implementation and delivery strategy
- `makeAtomicUnbounded` for an atomic implementation without a bounded capacity
- `bounded` for the higher-level backpressure constructor
- `dropping` for the higher-level dropping constructor
- `sliding` for the higher-level sliding constructor

**Signature**

```ts
declare const makeAtomicBounded: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => PubSub.Atomic<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L556)

Since v4.0.0