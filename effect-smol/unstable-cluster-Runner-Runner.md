Package: `effect`<br />
Module: `Runner`<br />

## Runner.Runner

A cluster runner that can host entities.

**Details**

Each runner has a unique network `address`, the shard `groups` it participates
in, and a relative `weight` used when assigning shards across runners.

**Signature**

```ts
declare class Runner
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runner.ts#L61)

Since v4.0.0