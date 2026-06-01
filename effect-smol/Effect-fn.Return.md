Package: `effect`<br />
Module: `Effect`<br />

## Effect.fn.Return

Generator return type accepted by `Effect.fn` and `Effect.fnUntraced`.

**Signature**

```ts
type Return<A, E, R> = Generator<Effect<any, E, R>, A, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L9372)

Since v3.19.0