Package: `effect`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.makePing

Creates a `RunnerHealth` service that pings runners through `Runners`, retrying
failed pings on a short schedule and treating a successful ping within the
timeout as healthy.

**Signature**

```ts
declare const makePing: Effect.Effect<{ readonly isAlive: (address: RunnerAddress) => Effect.Effect<boolean>; }, never, Scope.Scope | Runners.Runners>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerHealth.ts#L63)

Since v4.0.0