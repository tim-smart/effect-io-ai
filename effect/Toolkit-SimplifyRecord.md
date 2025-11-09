Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.SimplifyRecord

A utility type which simplifies a record type.

**Signature**

```ts
type { [K in keyof T]: T[K]; } = { [K in keyof T]: T[K] } & {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L448)

Since v1.0.0