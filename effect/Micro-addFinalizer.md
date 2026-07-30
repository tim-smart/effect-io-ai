Package: `effect`<br />
Module: `Micro`<br />

## Micro.addFinalizer

Add a finalizer to the current `MicroScope`.

**Signature**

```ts
declare const addFinalizer: (finalizer: (exit: MicroExit<unknown, unknown>) => Micro<void>) => Micro<void, never, MicroScope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3457)

Since v3.4.0