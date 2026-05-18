Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.ManagedRuntime.Services

Extracts the services available from a `ManagedRuntime`.

**Signature**

```ts
type Services<T> = [T] extends [ManagedRuntime<infer R, infer _E>] ? R
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ManagedRuntime.ts#L74)

Since v4.0.0