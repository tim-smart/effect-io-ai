Package: `effect`<br />
Module: `Duration`<br />

## Duration.Input

Valid input types that can be converted to a Duration.

**Signature**

```ts
type Input = | Duration
  | number // millis
  | bigint // nanos
  | readonly [seconds: number, nanos: number]
  | `${number} ${Unit}`
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L93)

Since v2.0.0