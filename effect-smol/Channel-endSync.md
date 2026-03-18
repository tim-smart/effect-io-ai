Package: `effect`<br />
Module: `Channel`<br />

## Channel.endSync

Creates a `Channel` that immediately ends with the lazily evaluated value.

**Signature**

```ts
declare const endSync: <A>(evaluate: LazyArg<A>) => Channel<never, never, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L805)

Since v4.0.0