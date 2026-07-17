Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.PreventSchedulerYield

Context reference that controls whether the runtime should bypass scheduler
yield checks. When set to `true`, the fiber run loop won't call
`Scheduler.shouldYield`.

**When to use**

Use to bypass scheduler yield checks for controlled runtime workloads where
cooperative yielding should be disabled.

**Gotchas**

Setting this reference to `true` can let long-running fibers monopolize the
JavaScript thread.

**See**

- `MaxOpsBeforeYield` for tuning yield frequency without disabling yield checks
- `Scheduler` for providing custom scheduler yield behavior

**Signature**

```ts
declare const PreventSchedulerYield: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Scheduler.ts#L283)

Since v4.0.0