Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.ManagedRuntime.Error

Extracts the layer construction error type of a `ManagedRuntime`.

**When to use**

Use to derive the layer construction error type from an existing
`ManagedRuntime` type.

**Signature**

```ts
type Error<T> = [T] extends [ManagedRuntime<infer _R, infer E>] ? E : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ManagedRuntime.ts#L83)

Since v3.4.0