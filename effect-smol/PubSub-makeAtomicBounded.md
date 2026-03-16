Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.makeAtomicBounded

Creates a bounded atomic PubSub implementation with optional replay buffer.

**Signature**

```ts
declare const makeAtomicBounded: <A>(capacity: number | { readonly capacity: number; readonly replay?: number | undefined; }) => PubSub.Atomic<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L475)

Since v4.0.0