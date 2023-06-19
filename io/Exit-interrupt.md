# interrupt

Constructs a new `Exit.Failure` from the specified `FiberId` indicating that
the `Fiber` running an `Effect` workflow was terminated due to interruption.

Part of the `Exit` module, imported from `@effect/io/Exit`.

**Signature**

```ts
export declare const interrupt: (fiberId: FiberId.FiberId) => Exit<never, never>
```
