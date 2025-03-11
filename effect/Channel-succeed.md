## succeed

Constructs a channel that succeeds immediately with the specified value.

**Signature**

```ts
declare const succeed: <A>(value: A) => Channel<never, unknown, never, unknown, A, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L2015)

Since v2.0.0