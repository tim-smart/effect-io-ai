Package: `effect`<br />
Module: `Channel`<br />

## Channel.fail

Constructs a channel that fails immediately with the specified error.

**Signature**

```ts
declare const fail: <E>(error: E) => Channel<never, unknown, E, unknown, never, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L805)

Since v2.0.0