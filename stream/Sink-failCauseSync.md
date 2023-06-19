# failCauseSync

Creates a sink halting with a specified lazily evaluated `Cause`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Sink<never, E, unknown, never, never>
```
