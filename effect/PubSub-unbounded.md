## unbounded

Creates an unbounded `PubSub`.

**Signature**

```ts
declare const unbounded: <A>(options?: { readonly replay?: number | undefined; }) => Effect.Effect<PubSub<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/PubSub.ts#L85)

Since v2.0.0