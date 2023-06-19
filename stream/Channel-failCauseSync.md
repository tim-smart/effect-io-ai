# failCauseSync

Constructs a channel that succeeds immediately with the specified lazily
evaluated `Cause`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const failCauseSync: <E>(
  evaluate: LazyArg<Cause.Cause<E>>
) => Channel<never, unknown, unknown, unknown, E, never, never>
```
