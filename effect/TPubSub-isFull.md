Package: `effect`<br />
Module: `TPubSub`<br />

## TPubSub.isFull

Returns `true` if the `TPubSub` contains at least one element, `false`
otherwise.

**Signature**

```ts
declare const isFull: <A>(self: TPubSub<A>) => STM.STM<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/TPubSub.ts#L108)

Since v2.0.0