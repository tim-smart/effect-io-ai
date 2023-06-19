# failCause

The stream that always fails with the specified `Cause`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Stream<never, E, never>
```
