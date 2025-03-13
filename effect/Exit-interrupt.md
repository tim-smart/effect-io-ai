Package: `effect`<br />
Module: `Exit`<br />

## Exit.interrupt

Constructs a new `Exit.Failure` from the specified `FiberId` indicating that
the `Fiber` running an `Effect` workflow was terminated due to interruption.

**Signature**

```ts
declare const interrupt: (fiberId: FiberId.FiberId) => Exit<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L264)

Since v2.0.0