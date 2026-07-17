Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Output

Extracts the output type from a `Schedule`.

**Signature**

```ts
type Output<S> = S extends Schedule<infer Output, any, any, any> ? Output : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L201)

Since v4.0.0