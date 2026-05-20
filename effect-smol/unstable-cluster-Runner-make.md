Package: `effect`<br />
Module: `Runner`<br />

## Runner.make

Constructs a `Runner` from its network address, shard groups, and relative
shard-assignment weight.

**Signature**

```ts
declare const make: (props: { readonly address: RunnerAddress; readonly groups: ReadonlyArray<string>; readonly weight: number; }) => Runner
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runner.ts#L124)

Since v4.0.0