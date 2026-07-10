Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Input

Extracts the input type from a `Schedule`.

**Signature**

```ts
type Input<S> = S extends Schedule<any, infer Input, any, any> ? Input : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L209)

Since v4.0.0