Package: `effect`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.RunnerHealth

Represents the service used to check if a Runner is healthy.

If a Runner is responsive, shards will not be re-assigned because the Runner may
still be processing messages. If a Runner is not responsive, then its
associated shards can and will be re-assigned to a different Runner.

**Signature**

```ts
declare class RunnerHealth
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerHealth.ts#L23)

Since v4.0.0