Package: `effect`<br />
Module: `ManagedRuntime`<br />

## ManagedRuntime.ManagedRuntime.Error

Extracts the layer construction error type of a `ManagedRuntime`.

**Signature**

```ts
type Error<T> = [T] extends [ManagedRuntime<infer _R, infer E>] ? E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ManagedRuntime.ts#L82)

Since v3.4.0