Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Env

Extracts the service requirements from a `Schedule`.

**Signature**

```ts
type Env<S> = S extends Schedule<any, any, any, infer Env> ? Env : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L225)

Since v4.0.0