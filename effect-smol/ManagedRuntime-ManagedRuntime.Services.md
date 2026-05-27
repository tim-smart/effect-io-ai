Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.ManagedRuntime.Services

Extracts the services available from a `ManagedRuntime`.

**When to use**

Use to derive the service requirements provided by an existing
`ManagedRuntime` type.

**Signature**

```ts
type Services<T> = [T] extends [ManagedRuntime<infer R, infer _E>] ? R
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ManagedRuntime.ts#L100)

Since v3.4.0