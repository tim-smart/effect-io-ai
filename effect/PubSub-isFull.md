Package: `effect`<br />
Module: `PubSub`<br />

## PubSub.isFull

Returns `true` if the `Queue` contains at least one element, `false`
otherwise.

**Signature**

```ts
declare const isFull: <A>(self: PubSub<A>) => Effect.Effect<boolean>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L113)

Since v2.0.0