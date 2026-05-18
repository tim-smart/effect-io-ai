Package: `effect`<br />
Module: `Effect`<br />

## Effect.Repeat.Options

Options that control whether and how an effect is repeated.

**Signature**

```ts
export interface Options<A> {
    while?: ((_: A) => boolean | Effect<boolean, any, any>) | undefined
    until?: ((_: A) => boolean | Effect<boolean, any, any>) | undefined
    times?: number | undefined
    schedule?: Schedule<any, A, any, any> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6952)

Since v2.0.0