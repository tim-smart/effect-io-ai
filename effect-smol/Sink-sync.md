Package: `effect`<br />
Module: `Sink`<br />

## Sink.sync

A sink that immediately ends with the specified lazily evaluated value.

**Signature**

```ts
declare const sync: <A>(a: LazyArg<A>) => Sink<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L470)

Since v2.0.0