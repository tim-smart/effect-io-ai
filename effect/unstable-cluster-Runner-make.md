Package: `effect`<br />
Module: `Runner`<br />

## Runner.make

Constructs a `Runner` from its network address, shard groups, and relative
shard-assignment weight.

**When to use**

Use to build runner metadata from an existing `RunnerAddress`, shard groups,
and relative weight when registering or exchanging a cluster runner.

**Details**

The `groups` array lists the shard groups the runner can host. During shard
assignment, the runner's address is added to each group's hash ring with
`weight` as its relative weight.

**Gotchas**

This helper constructs the value without runtime schema validation, so only
pass trusted `RunnerAddress`, `groups`, and `weight` values.

**See**

- `Runner` for the value created by this helper
- `RunnerAddress` for the network address accepted in `props.address`

**Signature**

```ts
declare const make: (props: { readonly address: RunnerAddress; readonly groups: ReadonlyArray<string>; readonly weight: number; }) => Runner
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runner.ts#L125)

Since v4.0.0