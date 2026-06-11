Package: `@effect/atom-react`<br />
Module: `RegistryContext`<br />

## RegistryContext.scheduleTask

Schedules Atom registry work with React's scheduler at low priority and
returns a cancellation function for the scheduled task.

**Signature**

```ts
declare const scheduleTask: (f: () => void) => () => void
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/atom/react/src/RegistryContext.ts#L23)

Since v4.0.0