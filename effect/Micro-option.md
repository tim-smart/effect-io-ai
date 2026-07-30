Package: `effect`<br />
Module: `Micro`<br />

## Micro.option

Replace the success value of the given `Micro` effect with an `Option`,
wrapping the success value in `Some` and returning `None` if the effect fails
with an expected error.

**Signature**

```ts
declare const option: <A, E, R>(self: Micro<A, E, R>) => Micro<Option.Option<A>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2922)

Since v3.4.0