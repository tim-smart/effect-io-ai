Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.SimplifyRecord

A utility type which flattens a record type for improved IDE display.

**Signature**

```ts
type { [K in keyof T]: T[K]; } = { [K in keyof T]: T[K] } & {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L511)

Since v1.0.0