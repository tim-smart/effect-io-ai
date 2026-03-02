Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.makeAtomicUnbounded

Creates an unbounded atomic PubSub implementation with optional replay buffer.

**Signature**

```ts
declare const makeAtomicUnbounded: <A>(options?: { readonly replay?: number | undefined; }) => PubSub.Atomic<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PubSub.ts#L498)

Since v4.0.0