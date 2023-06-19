# failCause

Creates a sink halting with a specified `Cause`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Sink<never, E, unknown, never, never>
```
