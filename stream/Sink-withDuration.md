# withDuration

Returns the sink that executes this one and times its execution.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const withDuration: <R, E, In, L, Z>(
  self: Sink<R, E, In, L, Z>
) => Sink<R, E, In, L, readonly [Z, Duration.Duration]>
```
