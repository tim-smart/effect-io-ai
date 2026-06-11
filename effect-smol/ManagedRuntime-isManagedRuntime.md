Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.isManagedRuntime

Checks whether the provided argument is a `ManagedRuntime`.

**When to use**

Use to narrow an unknown value before treating it as a `ManagedRuntime`.

**Details**

The guard checks the internal `ManagedRuntime` marker property. It does not
build the layer or inspect the runtime's services.

**Gotchas**

Disposed runtimes still carry the marker, so this guard does not prove the
runtime is still usable.

**See**

- `make` for creating managed runtimes this guard recognizes

**Signature**

```ts
declare const isManagedRuntime: (input: unknown) => input is ManagedRuntime<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ManagedRuntime.ts#L45)

Since v3.9.0