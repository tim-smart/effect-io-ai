Package: `effect`<br />
Module: `ChildProcessSpawner`<br />

## ChildProcessSpawner.Reref

An `Effect` that adds an unrefed child process back into the parent
process's reference count.

This value is returned by `ChildProcessHandle.unref` and can be run later to
restore the default behavior where the child process keeps the parent
process alive.

**Signature**

```ts
type Reref = Effect.Effect<void, PlatformError.PlatformError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ChildProcessSpawner.ts#L54)

Since v4.0.0