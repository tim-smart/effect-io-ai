# failCause

Constructs a channel that fails immediately with the specified `Cause`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Channel<never, unknown, unknown, unknown, E, never, never>
```
