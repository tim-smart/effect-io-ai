Package: `effect`<br />
Module: `Cause`<br />

## Cause.Done.Extract

Extracts the value type `A` from a `Done<A>` that may be nested in an
error union.

**Signature**

```ts
type Extract<E> = E extends Done<infer L> ? L : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1240)

Since v4.0.0