Package: `@effect/cluster`<br />
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
declare const make: (props: { readonly address: RunnerAddress; readonly groups: ReadonlyArray<string>; readonly version: number; }) => Runner
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Runner.ts#L98)

Since v1.0.0