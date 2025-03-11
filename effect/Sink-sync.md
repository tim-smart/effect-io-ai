## sync

A sink that immediately ends with the specified lazy value.

**Signature**

```ts
declare const sync: <A>(evaluate: LazyArg<A>) => Sink<A, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1328)

Since v2.0.0