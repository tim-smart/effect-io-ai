# sync

Constructs a channel that succeeds immediately with the specified lazy value.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const sync: <OutDone>(
  evaluate: LazyArg<OutDone>
) => Channel<never, unknown, unknown, unknown, never, never, OutDone>
```
