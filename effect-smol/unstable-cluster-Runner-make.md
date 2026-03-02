Package: `effect`<br />
Module: `Runner`<br />

## Runner.make

A `Runner` represents a physical application server that is capable of running
entities.

Because a Runner represents a physical application server, a Runner must have a
unique `address` which can be used to communicate with the server.

The version of a Runner is used during rebalancing to give priority to newer
application servers and slowly decommission older ones.

**Signature**

```ts
declare const make: (props: { readonly address: RunnerAddress; readonly groups: ReadonlyArray<string>; readonly weight: number; }) => Runner
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runner.ts#L92)

Since v4.0.0