Package: `effect`<br />
Module: `Runner`<br />

## Runner.Runner

Represents a cluster runner that can host entities.

**Details**

Each runner has a unique network `address`, the shard `groups` it participates
in, and a relative `weight` used when assigning shards across runners.

**Signature**

```ts
declare class Runner
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runner.ts#L29)

Since v4.0.0