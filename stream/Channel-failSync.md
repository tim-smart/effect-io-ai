# failSync

Constructs a channel that succeeds immediately with the specified lazily
evaluated value.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const failSync: <E>(evaluate: LazyArg<E>) => Channel<never, unknown, unknown, unknown, E, never, never>
```
