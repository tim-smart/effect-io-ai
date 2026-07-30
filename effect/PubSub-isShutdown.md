Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

**Signature**

```ts
declare const isShutdown: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L138)

Since v2.0.0