Package: `effect`<br />
Module: `Scheduler`<br />

## Scheduler.PreventSchedulerYield

A service reference that controls whether the runtime should bypass scheduler
yield checks. When set to `true`, the fiber run loop won't call
`Scheduler.shouldYield`.

**Signature**

```ts
declare const PreventSchedulerYield: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Scheduler.ts#L203)

Since v4.0.0