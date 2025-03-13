Package: `effect`<br />
Module: `Sink`<br />

## Sink.fail

A sink that always fails with the specified error.

**Signature**

```ts
declare const fail: <E>(e: E) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L572)

Since v2.0.0