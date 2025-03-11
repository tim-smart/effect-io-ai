## sync

Constructs a channel that succeeds immediately with the specified lazy value.

**Signature**

```ts
declare const sync: <OutDone>(evaluate: LazyArg<OutDone>) => Channel<never, unknown, never, unknown, OutDone, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2033)

Since v2.0.0