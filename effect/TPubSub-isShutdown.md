Package: `effect`<br />
Module: `TPubSub`<br />

## TPubSub.isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

**Signature**

```ts
declare const isShutdown: <A>(self: TPubSub<A>) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L125)

Since v2.0.0