Package: `effect`<br />
Module: `References`<br />

## References.PreventSchedulerYield

Context reference for whether the runtime bypasses scheduler yield checks.

**When to use**

Use to bypass automatic scheduler yield checks in a controlled runtime scope
where throughput is preferred over scheduler fairness.

**Details**

When set to `true`, the fiber run loop skips `Scheduler.shouldYield`. The
default value is `false`.

**Gotchas**

Disabling automatic yield checks can let long-running fibers monopolize the
JavaScript thread.

**See**

- `MaxOpsBeforeYield` for tuning the operation budget while keeping scheduler yield checks enabled

**Signature**

```ts
declare const PreventSchedulerYield: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/References.ts#L112)

Since v4.0.0