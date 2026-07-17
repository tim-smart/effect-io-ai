Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Error

Extracts the error type from a `Schedule`.

**Signature**

```ts
type Error<S> = S extends Schedule<any, any, infer Error, any> ? Error : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L217)

Since v4.0.0