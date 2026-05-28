Package: `effect`<br />
Module: `Effect`<br />

## Effect.Retry.Options

Options that control whether and how a failing effect is retried.

**Signature**

```ts
export interface Options<E> {
    while?: ((error: E) => boolean | Effect<boolean, any, any>) | undefined
    until?: ((error: E) => boolean | Effect<boolean, any, any>) | undefined
    times?: number | undefined
    schedule?: Schedule<any, E, any, any> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3967)

Since v2.0.0